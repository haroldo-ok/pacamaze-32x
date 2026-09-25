/* Pacamaze-32X - software renderer (RE basis: re dumps).
 * Renders palette indices into a 320x200 buffer. No libc. */
#include "render.h"
#include "../gen/assets.h"

static int RECIP[100];
static uint16_t TAILW[96];
static uint16_t EXT[1120];
static int ZBUF[256];
static uint16_t HDIV[8000];     /* 8000/i (wall height; SH-2 has no divider) */
static uint16_t RDIV[4000];     /* 65536/i (texture step) */
static int RINIT = 0;

static void RenderInit(void)
{
    int i;
    uint8_t tailb[192];
    for (i = 1; i < 100; i++)
        RECIP[i] = 2000 / i;
    RECIP[0] = 0;
    for (i = 1; i < 8000; i++)
        HDIV[i] = (uint16_t)(8000 / i);
    HDIV[0] = 0;
    for (i = 1; i < 4000; i++)
        RDIV[i] = (uint16_t)(65536 / i);
    RDIV[0] = 0;
    /* wordmap-extension tail: DOS reads past wordmap into PAC.3D bytes,
     * 2 unknown bytes, then the RECIP table. */
    for (i = 0; i < 100; i++)
        tailb[i] = A_PAC[i];
    tailb[100] = 0;
    tailb[101] = 0;
    for (i = 1; i < 46; i++) {
        tailb[100 + i * 2] = (uint8_t)(RECIP[i] & 0xFF);
        tailb[101 + i * 2] = (uint8_t)((RECIP[i] >> 8) & 0xFF);
    }
    for (i = 0; i < 96; i++)
        TAILW[i] = (uint16_t)(tailb[i * 2] | (tailb[i * 2 + 1] << 8));
    for (i = 0; i < 96; i++)
        EXT[1024 + i] = TAILW[i];
    RINIT = 1;
}

/* ---- primitives (inclusive coords, like the DOS vline/hline/rect) ---- */

static void FillRect(uint8_t *fb, int x0, int y0, int x1, int y1, uint8_t c)
{
    int y;
    uint32_t w4;
    if (x0 < 0) x0 = 0;
    if (y0 < 0) y0 = 0;
    if (x1 > R_W - 1) x1 = R_W - 1;
    if (y1 > R_H - 1) y1 = R_H - 1;
    if (x1 < x0 || y1 < y0)
        return;
    w4 = (uint32_t)c * 0x01010101u;
    for (y = y0; y <= y1; y++) {
        uint8_t *row = fb + y * R_W;
        int x = x0, n = x1 - x0 + 1;
        /* SH-2 has no unaligned word stores: byte-fill to alignment. */
        while (n > 0 && ((uintptr_t)(row + x) & 3)) {
            row[x++] = c;
            n--;
        }
        {
            uint32_t *w = (uint32_t *)(row + x);
            while (n >= 4) {
                *w++ = w4;
                n -= 4;
            }
            x = (int)((uint8_t *)w - row);
        }
        while (n-- > 0)
            row[x++] = c;
    }
}

static void VLine(uint8_t *fb, int x, int y0, int y1, uint8_t c)
{
    uint8_t *p;
    if (x < 0 || x >= R_W)
        return;
    if (y0 < 0) y0 = 0;
    if (y1 > R_H - 1) y1 = R_H - 1;
    p = fb + y0 * R_W + x;
    for (; y0 <= y1; y0++, p += R_W)
        *p = c;
}

static void HLine(uint8_t *fb, int x0, int x1, int y, uint8_t c)
{
    uint8_t *p;
    if (y < 0 || y >= R_H)
        return;
    if (x0 < 0) x0 = 0;
    if (x1 > R_W - 1) x1 = R_W - 1;
    p = fb + y * R_W + x0;
    for (; x0 <= x1; x0++)
        *p++ = c;
}

static void Rect(uint8_t *fb, int x0, int y0, int x1, int y1, uint8_t c)
{
    VLine(fb, x0, y0, y1, c);
    VLine(fb, x1, y0, y1, c);
    HLine(fb, x0, x1, y0, c);
    HLine(fb, x0, x1, y1, c);
}

static void Glyph(uint8_t *fb, int x, int y, int fi)
{
    int r;
    const uint8_t *g = A_FONT + fi * 96;
    if (x >= 0 && x + 8 <= R_W) {
        for (r = 0; r < 12; r++) {
            int yy = y + r;
            if (yy >= 0 && yy < R_H) {
                uint8_t *p = fb + yy * R_W + x;
                p[0] = g[0];
                p[1] = g[1];
                p[2] = g[2];
                p[3] = g[3];
                p[4] = g[4];
                p[5] = g[5];
                p[6] = g[6];
                p[7] = g[7];
            }
            g += 8;
        }
    } else {
        for (r = 0; r < 12; r++) {
            int yy = y + r, c;
            if (yy >= 0 && yy < R_H)
                for (c = 0; c < 8; c++) {
                    int xx = x + c;
                    if (xx >= 0 && xx < R_W)
                        fb[yy * R_W + xx] = g[c];
                }
            g += 8;
        }
    }
}

/* DOS putstring: spaces skipped (transparent), 10px pitch. */
static void PutStr(uint8_t *fb, int x, int y, const char *s)
{
    while (*s) {
        if (*s != ' ')
            Glyph(fb, x, y, A_FONTIDX(*s));
        x += 10;
        s++;
    }
}

/* DOS putdigit: 4 digits, ones at x, thousands at x+30. */
static void PutDigit4(uint8_t *fb, int x, int y, int v)
{
    int d[4], i;
    v %= 10000;
    if (v < 0)
        v = 0;
    d[0] = v / 1000;
    d[1] = (v / 100) % 10;
    d[2] = (v / 10) % 10;
    d[3] = v % 10;
    for (i = 0; i < 4; i++)
        Glyph(fb, x + i * 10, y, d[i]);
}

/* ---- floor (DOS floorA/floorB) ---- */

/* One floor texel; reads X/Y, advances them, stores through *p++.
 * Texel-reuse cache: identical (X>>8, Y>>8, word) repeats the texel
 * (shade is constant per row), collapsing far-row runs exactly. */
#define FLOOR_SAMPLE() do { \
    int32_t x8_ = X >> 8, y8_ = Y >> 8; \
    if (x8_ == cx8 && y8_ == cy8) { \
        *p++ = ctex; \
        *p++ = ctex; \
    } else { \
        int e_ = (X >> 12) & 0xFE; \
        int bb_ = (Y >> 7) & 0x7C0; \
        uint16_t w_ = EXT[(e_ + bb_) >> 1]; \
        int dot_ = (x8_ & 31) + ((y8_ & 31) << 5); \
        int off_ = (w_ & 0xFF00) + dot_; \
        int hi_ = off_ >> 8; \
        uint8_t base_; \
        if (hi_ >= 0x28) \
            base_ = 0x71; \
        else if (hi_ >= 0x24) \
            base_ = A_FLOOR1[dot_]; \
        else if (hi_ >= 0x20) \
            base_ = A_FLOOR0[dot_]; \
        else if (hi_ >= 0x10) \
            base_ = 0; \
        else \
            base_ = wallflat[off_]; \
        ctex = (uint8_t)(base_ - shade); \
        cx8 = x8_; \
        cy8 = y8_; \
        *p++ = ctex; \
        *p++ = ctex; \
    } \
    X += stepx; \
    Y += stepy; \
} while (0)

static void DrawFloor(const Game *g, uint8_t *fb)
{
    int j;
    int s = A_SIN(g->pdir), c = A_COS(g->pdir);
    const uint8_t *wallflat = A_WALLS[(g->level & 1) * 4];
    int32_t px8 = g->px << 8, py8 = g->py << 8;
    for (j = 0; j < 97; j++) {
        int d = RECIP[j + 3];
        int sd = s * d, cd = c * d;
        int32_t X = cd + px8 + sd;
        int32_t Y = sd + py8 - cd;
        int32_t stepx = (-sd) >> 6, stepy = cd >> 6;
        int shade = (d >> 5) - (d >> 7);
        uint8_t *p = fb + (100 + j) * R_W;
        int32_t cx8 = ~(X >> 8), cy8 = 0;
        uint8_t ctex = 0;
        int k;
        if (g->walls_on) {
            for (k = 0; k < 64; k++) {
                FLOOR_SAMPLE();
                FLOOR_SAMPLE();
            }
        } else {
            for (k = 0; k < 64; k++) {
                int t;
                for (t = 0; t < 2; t++) {
                    if ((((uint32_t)X | (uint32_t)Y) & 0xFFFC0000u) != 0) {
                        *p++ = (uint8_t)(0 - shade);
                        *p++ = (uint8_t)(0 - shade);
                        X += stepx;
                        Y += stepy;
                    } else {
                        FLOOR_SAMPLE();
                    }
                }
            }
        }
    }
}

/* ---- walls (DOS wallsetup/raymarch/walldraw/texmap) ---- */

static void March(const uint8_t *bm, int32_t x, int32_t y, int32_t vx,
                  int32_t vy, int *si, int *var, int *tc)
{
    int32_t cx = vx << 1, cy = vy << 1;
    int s, v, idx2;
    /* Bordered map: rays always terminate (DOS has no guard either). */
    for (s = 8;; s += 8) {
        int idx;
        x += cx;
        y += cy;
        idx = (int)((x >> 21) | ((y >> 16) & 0xFFE0));
        if (bm[idx] != 0)
            break;
    }
    v = bm[(x >> 21) | ((y >> 16) & 0xFFE0)];
    cx >>= 1;
    cy >>= 1;
    x -= cx;
    y -= cy;
    idx2 = (int)((x >> 21) | ((y >> 16) & 0xFFE0));
    if (bm[idx2] != 0) {
        v = bm[idx2];
        s -= 4;
    } else {
        x += cx;
        y += cy;
    }
    {
        int ex = (int)(x >> 16);
        int frac = ((ex >> 5) != (int)((x - cx) >> 21)) ? (int)(y >> 16) : ex;
        *si = s;
        *var = v;
        *tc = (frac & 31) << 5;
    }
}

static void DrawWalls(const Game *g, uint8_t *fb)
{
    int i;
    int V0 = A_SIN(g->pdir + 128) * 362;
    int V1 = A_SIN(g->pdir - 128) * 362;
    int sA = (-V1 - V0) >> 8, sB = (V0 - V1) >> 8;
    int32_t vx = V0, vy = V1;
    int32_t x0 = g->px << 16, y0 = g->py << 16;
    if (!g->walls_on) {
        for (i = 0; i < 256; i++)
            ZBUF[i] = 0x7530;
        return;
    }
    {
        const uint8_t *bm = g->bytemap;
        const uint8_t *sheets = A_WALLS[(g->level & 1) * 4];
        for (i = 0; i < 256; i++) {
            int si, var, tc;
            March(bm, x0, y0, vx, vy, &si, &var, &tc);
            ZBUF[i] = si;
            vx += sA;
            vy += sB;
            if (si >= 4 && si < 8000) {
                int h = HDIV[si];
                int top = 101 - h;
                int rows = (100 - top) << 1;
                uint16_t step;
                if (rows < 2)
                    continue;   /* unreachable; DOS corrupts here */
                step = RDIV[rows];
                uint16_t v = 0;
                int shade = si > 1664 ? 16 : (si >> 7) + 3;
                const uint8_t *tex = sheets + (var - 1) * 1024 + (tc >> 5) * 32;
                uint8_t *p;
                int t;
                if (top < 1) {
                    v = (uint16_t)((1 - top) * step);
                    top = 1;
                    rows = 199;
                }
                p = fb + top * R_W + i;
                for (t = 0; t < rows; t++, p += R_W) {
                    *p = (uint8_t)(tex[(v >> 11) & 31] - shade);
                    v += step;
                }
            }
        }
    }
}

/* ---- sprites (DOS shared2734/sprcol/sort) ---- */

typedef struct {
    const uint8_t *sheet;
    int zslot, sx;
} Vis;

static void DrawSprites(const Game *g, uint8_t *fb)
{
    int cd = A_COS(g->pdir), sd = A_SIN(g->pdir);
    int c2 = A_COS(g->pdir - 256), s2 = A_SIN(g->pdir - 256);
    Vis vis[MAXOBJ];
    int nv = 0, i, j;
    for (i = 0; i < MAXOBJ; i++) {
        const Obj *o = &g->obj[i];
        int32_t relx, rely, depth, lat;
        int zslot, sx;
        if (!o->alive)
            continue;
        relx = o->x - g->px;
        rely = o->y - g->py;
        depth = cd * relx + sd * rely;
        if (depth <= 0)
            continue;
        lat = c2 * relx + s2 * rely;
        zslot = (int)(depth >> 6);
        sx = 128 - (int)((lat << 7) / depth);
        {
            const uint8_t *sh =
                o->type == 'e' ? A_FI3 : o->type == 'a' ? A_FI1 : A_BULLET;
            /* insertion sort ascending by zslot (DOS heapsorts ascending) */
            for (j = nv; j > 0 && vis[j - 1].zslot > zslot; j--) {
                vis[j].zslot = vis[j - 1].zslot;
                vis[j].sx = vis[j - 1].sx;
                vis[j].sheet = vis[j - 1].sheet;
            }
            vis[j].zslot = zslot;
            vis[j].sx = sx;
            vis[j].sheet = sh;
            nv++;
        }
    }
    for (i = 0; i < nv; i++) {
        int zslot = vis[i].zslot, sx = vis[i].sx;
        const uint8_t *sheet = vis[i].sheet;
        int h = zslot ? 8000 / zslot : 0;
        int top1 = zslot ? 101 - h : 1;
        int rp = 100 - top1;
        uint16_t step = rp ? (uint16_t)(65536 / rp) : 1;
        int top = 101 - (rp >> 1), rows, x0;
        uint16_t skip = 0;
        int32_t u = 0;
        int x;
        if (top < 1) {
            skip = (uint16_t)((1 - top) * step);
            top = 1;
            rows = 199;
        } else {
            rows = rp;
        }
        x0 = sx - (rows >> 1);
        for (x = x0; x < x0 + rows; x++, u += step) {
            const uint8_t *scol;
            uint16_t v;
            int t0, t1, t;
            uint8_t *p;
            if (x < 0 || x > 255)
                continue;
            if (ZBUF[x] <= zslot)
                continue;
            scol = sheet + ((u >> 11) & 31) * 32;
            t0 = top < 0 ? -top : 0;
            t1 = top + rows > R_H ? R_H - top : rows;
            v = (uint16_t)(skip + step * t0);
            p = fb + (top + t0) * R_W + x;
            for (t = t0; t < t1; t++, p += R_W) {
                uint8_t tex = scol[(v >> 11) & 31];
                v += step;
                if (tex)
                    *p = tex;
            }
        }
    }
}

/* ---- sidebar (DOS drawbar/putdigit/radar blips) ---- */

static void DrawSidebar(const Game *g, uint8_t *fb)
{
    int i, r, c;
    int cd = A_COS(g->pdir), sd = A_SIN(g->pdir);
    int c2 = A_COS(g->pdir - 256), s2 = A_SIN(g->pdir - 256);
    FillRect(fb, 256, 0, 319, 199, 48);
    FillRect(fb, 264, 9, 312, 55, 0);
    FillRect(fb, 264, 62, 312, 91, 53);
    FillRect(fb, 264, 98, 312, 113, 0);
    FillRect(fb, 264, 120, 312, 149, 53);
    FillRect(fb, 264, 156, 312, 197, 53);
    Rect(fb, 262, 61, 314, 92, 84);
    Rect(fb, 264, 8, 312, 56, 84);
    Rect(fb, 262, 97, 314, 114, 84);
    Rect(fb, 262, 119, 314, 150, 84);
    Rect(fb, 262, 155, 314, 198, 84);
    /* lives icons: 3 PAC stamps (static decor) */
    for (i = 0; i < 3; i++) {
        uint8_t *dst = fb + 101 * R_W + 272 + i * 12;
        const uint8_t *src = A_PAC;
        for (r = 0; r < 10; r++, dst += R_W, src += 10)
            for (c = 0; c < 10; c++)
                dst[c] = src[c];
    }
    PutStr(fb, 262, 64, STR_SCORE);
    PutStr(fb, 268, 122, STR_AMMO);
    PutStr(fb, 262, 158, STR_LOGO0);
    PutStr(fb, 262, 171, STR_LOGO1);
    PutStr(fb, 262, 184, STR_LOGO2);
    PutDigit4(fb, 268, 78, g->score);
    PutDigit4(fb, 268, 136, g->ammo);
    /* radar blips */
    fb[32 * R_W + 288] = 148;   /* player */
    for (i = 0; i < MAXOBJ; i++) {
        const Obj *o = &g->obj[i];
        int32_t relx, rely, depth, lat;
        int rx, ry;
        uint8_t col;
        if (!o->alive)
            continue;
        relx = o->x - g->px;
        rely = o->y - g->py;
        depth = cd * relx + sd * rely;
        lat = c2 * relx + s2 * rely;
        rx = (int)((-lat) >> 13);
        ry = (int)((-depth) >> 13);
        if (rx < -23 || rx > 23 || ry < -23 || ry > 23)
            continue;
        col = (uint8_t)(((o->type == 'e' ? 5 : o->type == 'a' ? 6 : 7) << 5)
                        + 0x94);
        fb[(32 + ry) * R_W + 288 + rx] = col;
    }
}

/* ---- fullscreen map (DOS drawmap/maprest) ---- */

static void DrawMap(const Game *g, uint8_t *fb)
{
    int X, Y;
    for (X = 0; X < 32; X++) {
        for (Y = 0; Y < 32; Y++) {
            uint16_t w = g->wordmap[X + (Y << 5)];
            uint8_t base = (w == 0x2800) ? 0 : 48;
            uint8_t *dst = fb + (4 + Y * 6) * R_W + 32 + X * 6;
            int dx, dy;
            for (dy = 0; dy < 6; dy++, dst += R_W)
                for (dx = 0; dx < 6; dx++) {
                    uint8_t c = base;
                    if (w == 0x2400 && dy >= 2 && dy <= 3 && dx >= 2 &&
                        dx <= 3)
                        c = 148;
                    dst[dx] = c;
                }
        }
    }
    {
        int ax = (int)((g->px >> 5) * 6 + 32);
        int ay = (int)((g->py >> 5) * 6 + 4);
        int d8 = (g->pdir >> 7) & 7;
        int br = (d8 == 0 || d8 == 7) ? 1 : d8 <= 2 ? 0 : d8 <= 4 ? 2 : 3;
        const uint8_t *st = A_ARROW[br];
        int r, cc;
        for (r = 0; r < 5; r++)
            for (cc = 0; cc < 5; cc++)
                fb[(ay + r) * R_W + ax + cc] = st[r * 5 + cc];
    }
    Rect(fb, 31, 3, 224, 196, 82);
    Rect(fb, 32, 4, 223, 195, 85);
    Rect(fb, 34, 6, 221, 193, 82);
}

/* ---- msgbox (DOS msgbox @ 0x3111) ---- */

static void DrawMsg(const Game *g, uint8_t *fb)
{
    const char *s = g->msg;
    int len = 0, w, x0, x;
    while (*s++) {
    }
    len = (int)(s - g->msg);    /* strlen + 1 */
    w = len * 10;
    x0 = (256 - w) >> 1;
    for (x = x0; x < x0 + w; x++)
        VLine(fb, x, 90, 110, 53);
    Rect(fb, x0, 90, x0 + w, 110, 85);
    PutStr(fb, x0 + 5, 94, g->msg);
    for (x = 63; x < 193; x++)
        VLine(fb, x, 115, 135, 53);
    Rect(fb, 63, 115, 193, 135, 85);
    PutStr(fb, 68, 119, STR_PRESS_ENTER);
}

/* ---- title / win screens (DOS meny/winflow) ---- */

static const int TITLE_YY[25] = {
    70, 90, 105, 120, 135, 150, 165, 185, 200, 215, 230, 245, 260,
    275, 290, 305, 320, 340, 355, 370, 385, 400, 415, 435, 460
};
static const int WIN_YY[12] = {
    70, 90, 105, 125, 140, 155, 180, 200, 215, 235, 250, 270
};

static void DrawTitle(const Game *g, uint8_t *fb)
{
    int i, y0 = 65 - g->scroll, y1 = 479 - g->scroll;
    FillRect(fb, 0, 0, 319, 199, 0);
    FillRect(fb, 15, y0, 305, y1, 53);
    Rect(fb, 15, y0, 305, y1, 82);
    for (i = 0; i < 25; i++) {
        int sy = TITLE_YY[i] - g->scroll;
        if (sy < -12 || sy > 199)
            continue;
        PutStr(fb, 20, sy, A_INTRO[i]);
    }
    if (165 - g->scroll >= -12 && 165 - g->scroll <= 199)
        PutStr(fb, 310, 165 - g->scroll, "}");
}

static void DrawWin(const Game *g, uint8_t *fb)
{
    int i, y0 = 65 - g->scroll, y1 = 290 - g->scroll;
    FillRect(fb, 0, 0, 319, 199, 0);
    FillRect(fb, 15, y0, 305, y1, 53);
    Rect(fb, 15, y0, 305, y1, 82);
    for (i = 0; i < 12; i++) {
        int sy = WIN_YY[i] - g->scroll;
        if (sy < -12 || sy > 199)
            continue;
        PutStr(fb, 20, sy, A_INTRO[25 + i]);
    }
    if (165 - g->scroll >= -12 && 165 - g->scroll <= 199)
        PutStr(fb, 310, 165 - g->scroll, "}");
}

/* ---- frame ---- */

static void RenderGame(const Game *g, uint8_t *fb)
{
    int i;
    for (i = 0; i < 1024; i++)
        EXT[i] = g->wordmap[i];
    /* floor covers rows 100..196; clear ceiling + bottom strip only */
    FillRect(fb, 0, 0, 255, 99, 0);
    FillRect(fb, 0, 197, 255, 199, 0);
    DrawFloor(g, fb);
    DrawWalls(g, fb);
    DrawSprites(g, fb);
    DrawSidebar(g, fb);
}

void Render(const Game *g, uint8_t *fb)
{
    if (!RINIT)
        RenderInit();
    switch (g->state) {
    case ST_TITLE:
        DrawTitle(g, fb);
        break;
    case ST_WIN:
        DrawWin(g, fb);
        break;
    case ST_MAP:
        RenderGame(g, fb);
        DrawMap(g, fb);
        break;
    case ST_MSG:
        RenderGame(g, fb);
        DrawMsg(g, fb);
        break;
    default:
        RenderGame(g, fb);
        break;
    }
}
