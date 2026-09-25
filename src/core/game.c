/* Pacamaze-32X - game logic (RE basis: docs/GAME_SPEC.md + re dumps).
 * No libc. */
#include "game.h"
#include "../gen/assets.h"

static void Zero(void *s, unsigned n)
{
    unsigned char *p = (unsigned char *)s;
    while (n--)
        *p++ = 0;
}

#define SIN(d) A_SINTAB[(d) & 0x3FF]
#define COS(d) A_SINTAB[((d) + 256) & 0x3FF]

static int Abs16(int v)
{
    return v < 0 ? -v : v;
}

/* Borland rand(n): state = state*1103515245+12345; (rand()*n)/32768. */
static int DosRand(Game *g, int n)
{
    uint32_t r;
    g->rng = g->rng * 1103515245u + 12345u;
    r = (g->rng >> 16) & 0x7FFFu;
    return (int)((r * (uint32_t)n) >> 15);
}

static void Sfx_Start(Game *g, int cur, int step)
{
    g->sfx_cur = cur;
    g->sfx_step = step;
}

static void Sfx_Tick(Game *g)
{
    if (g->sfx_cur > 0) {
        g->sfx_cur -= g->sfx_step;
        if (g->sfx_cur < 0)
            g->sfx_cur = 0;
    }
}

static Obj *AllocObj(Game *g, char type)
{
    int i;
    for (i = 0; i < MAXOBJ; i++) {
        if (!g->obj[i].alive) {
            Obj *o = &g->obj[i];
            o->alive = 1;
            o->type = type;
            o->x = o->y = 0;
            o->dir = o->dirword = o->steps = o->etype = 0;
            o->seq = ++g->seq;
            return o;
        }
    }
    return 0;
}

static void KillType(Game *g, char type)
{
    int i;
    for (i = 0; i < MAXOBJ; i++)
        if (g->obj[i].alive && g->obj[i].type == type)
            g->obj[i].alive = 0;
}

/* bytemap with out-of-range treated as wall (DOS reads adjacent memory;
 * equivalent for all in-map play). */
static int ByteAt(Game *g, int idx)
{
    if (idx < 0 || idx > 1023)
        return 1;
    return g->bytemap[idx];
}

static void LoadLevel(Game *g, int level)
{
    const uint8_t *k = A_KARTA[level];
    int x, y;
    g->level = level;
    g->dots = 0;
    for (x = 0; x < 32; x++) {
        for (y = 0; y < 32; y++) {
            /* DOS readmap: straight copy file[i] -> map[i]. */
            int m = x + (y << 5);
            int f = k[m];
            if (f == 0) {
                g->bytemap[m] = 0;
                g->wordmap[m] = 0x2400;
                g->dots++;
            } else {
                g->bytemap[m] = (uint8_t)(DosRand(g, 4) + 1);
                g->wordmap[m] = 0x2800;
            }
        }
    }
}

static void SpawnPlayer(Game *g)
{
    g->px = 464;
    g->py = 496;
    g->pdir = 0x100;
}

/* Ghosts and level ammo share the 4 corner combos (C1,C1),(C1,C2),
 * (C2,C1),(C2,C2). */
static void SpawnGhosts(Game *g)
{
    int i;
    int c1 = A_CORNERS[g->level][0];
    int c2 = A_CORNERS[g->level][1];
    for (i = 0; i < 4; i++) {
        Obj *o = AllocObj(g, 'e');
        if (!o)
            return;
        o->x = (i < 2) ? c1 : c2;
        o->y = (i & 1) ? c2 : c1;
        o->dirword = 0;
        o->steps = 1;
        o->etype = A_TYPES[g->level][i] - '0';
    }
}

static void SpawnAmmo(Game *g)
{
    int i;
    int c1 = A_CORNERS[g->level][0];
    int c2 = A_CORNERS[g->level][1];
    for (i = 0; i < 4; i++) {
        Obj *o = AllocObj(g, 'a');
        if (!o)
            return;
        o->x = (i < 2) ? c1 : c2;
        o->y = (i & 1) ? c2 : c1;
    }
}

static void NewGame(Game *g)
{
    int i;
    g->score = 0;
    g->ammo = 0;
    g->deaths = 0;
    g->walls_on = 1;
    g->tick_carry = 0;
    g->tick_acc = 0;
    g->sfx_cur = g->sfx_step = 0;
    g->fire_pressed = 0;
    g->spin_acc = 0;
    g->scroll = 0;
    for (i = 0; i < MAXOBJ; i++)
        g->obj[i].alive = 0;
    g->seq = 0;
    g->rng = g->frame;
    LoadLevel(g, 0);
    SpawnPlayer(g);
    SpawnGhosts(g);
    SpawnAmmo(g);
    g->state = ST_GAME;
}

static void RestartLevel(Game *g)
{
    KillType(g, 'b');
    KillType(g, 'e');
    g->fire_pressed = 0;
    SpawnPlayer(g);
    SpawnGhosts(g);
    g->state = ST_GAME;
}

/* Greedy chase direction (DOS getnewdir). Sets steps, returns dirword. */
static int GhostNewDir(Game *g, Obj *o)
{
    int dx = (int)(int16_t)(g->px - o->x);
    int dy = (int)(int16_t)(g->py - o->y);
    int cx = (int)(o->x >> 5);
    int cur = cx + ((int)(o->y >> 5) << 5);
    int d1, d2, dir = 0;
    o->steps = 1;
    if (dx == 0 && dy == 0)
        return 0;
    if (Abs16(dx) > Abs16(dy)) {
        d1 = (dx < 0) ? -1 : 1;
        d2 = (dy < 0) ? -32 : 32;
    } else {
        d1 = (dy < 0) ? -32 : 32;
        d2 = (dx < 0) ? -1 : 1;
    }
    if (ByteAt(g, cur + d1) == 0)
        dir = d1;
    else if (ByteAt(g, cur + d2) == 0)
        dir = d2;
    else if (ByteAt(g, cur - d2) == 0)
        dir = -d2;
    else if (ByteAt(g, cur - d1) == 0)
        dir = -d1;
    else
        return 0;
    while (ByteAt(g, cur + dir * (o->steps + 1)) == 0)
        o->steps++;
    o->steps = DosRand(g, o->steps) + 1;
    return dir;
}

/* One ghost move-call (DOS enmove/walk). Returns 1 if it killed the player. */
static int GhostMove(Game *g, Obj *o)
{
    int32_t dx, dy;
    if (o->x % 32 == 16 && o->y % 32 == 16)
        o->steps--;
    if (o->steps == 0)
        o->dirword = GhostNewDir(g, o);
    switch (o->dirword) {
    case 1:  o->x += o->etype; break;
    case -1: o->x -= o->etype; break;
    case 32: o->y += o->etype; break;
    case -32: o->y -= o->etype; break;
    default: break;
    }
    dx = o->x - g->px;
    dy = o->y - g->py;
    if (dx < 0) dx = -dx;
    if (dy < 0) dy = -dy;
    if (dx <= 16 && dy <= 16)
        return 1;
    return 0;
}

/* Ghost respawn after being shot (DOS checkobjects 'e' branch). */
static void GhostShot(Game *g, Obj *o)
{
    int c1 = A_CORNERS[g->level][0];
    int c2 = A_CORNERS[g->level][1];
    int adx = Abs16((int)g->px - 512);
    int ady = Abs16((int)g->py - 512);
    if (adx > ady) {
        o->x = (g->px > 512) ? c1 : c2;
        o->y = DosRand(g, 2) ? c2 : c1;
    } else {
        o->y = (g->py > 512) ? c1 : c2;
        o->x = DosRand(g, 2) ? c2 : c1;
    }
    o->steps = 1;
}

/* Player movement + turning (DOS moveplayer/turn). */
static void PlayerMove(Game *g, uint16_t pad, int ticks)
{
    int c = COS(g->pdir), s = SIN(g->pdir);
    if (pad & IN_LEFT)
        g->pdir -= ticks * 7;
    else if (pad & IN_RIGHT)
        g->pdir += ticks * 7;
    g->pdir &= 0x3FF;

    if ((pad & IN_UP) && ticks > 0) {
        int m = MapIdx(g->px + c / 10, g->py + s / 10);
        if (g->bytemap[m] == 0) {
            g->px += c * ticks / 162;
            g->py += s * ticks / 162;
        }
    } else if ((pad & IN_DOWN) && ticks > 0) {
        int m = MapIdx(g->px - c / 10, g->py - s / 10);
        if (g->bytemap[m] == 0) {
            g->px -= c * ticks / 162;
            g->py -= s * ticks / 162;
        }
    }
    if (g->px < 0) g->px = 0; else if (g->px > 1023) g->px = 1023;
    if (g->py < 0) g->py = 0; else if (g->py > 1023) g->py = 1023;
}

/* DOS checkobjects, run once per frame before motion. */
static void CheckObjects(Game *g)
{
    int i;
    uint32_t newest = 0;
    Obj *newb = 0;
    /* bullets that reached a wall die (with kill sound) */
    for (i = 0; i < MAXOBJ; i++) {
        Obj *o = &g->obj[i];
        if (!o->alive || o->type != 'b')
            continue;
        if (o->seq > newest) {
            newest = o->seq;
            newb = o;
        }
        if (g->bytemap[MapIdx(o->x, o->y)] != 0) {
            o->alive = 0;
            Sfx_Start(g, SFX_KILL_CUR, SFX_KILL_STEP);
        }
    }
    /* the newest live bullet has a kill aura around every ghost */
    if (newb && newb->alive) {
        for (i = 0; i < MAXOBJ; i++) {
            Obj *o = &g->obj[i];
            int32_t dx, dy;
            if (!o->alive || o->type != 'e')
                continue;
            dx = newb->x - o->x;
            dy = newb->y - o->y;
            if (dx < 0) dx = -dx;
            if (dy < 0) dy = -dy;
            if (dx < 20 && dy < 20) {
                GhostShot(g, o);
                g->score += 10;
                Sfx_Start(g, SFX_KILL_CUR, SFX_KILL_STEP);
            }
        }
    }
    /* ammo pickup by player proximity */
    for (i = 0; i < MAXOBJ; i++) {
        Obj *o = &g->obj[i];
        int32_t dx, dy;
        if (!o->alive || o->type != 'a')
            continue;
        dx = g->px - o->x;
        dy = g->py - o->y;
        if (dx < 0) dx = -dx;
        if (dy < 0) dy = -dy;
        if (dx < 10 && dy < 10) {
            o->alive = 0;
            g->ammo += 5;
            Sfx_Start(g, SFX_KILL_CUR, SFX_KILL_STEP);
        }
    }
}

/* DOS eat(): dot pickup. */
static void EatDot(Game *g)
{
    int m = MapIdx(g->px, g->py);
    if (g->wordmap[m] == 0x2400) {
        g->wordmap[m] = 0x2000;
        g->score++;
        g->dots--;
        Sfx_Start(g, SFX_EAT_CUR, SFX_EAT_STEP);
    }
}

/* DOS moveobjects: every object moves `count` times. Returns died. */
static int MoveObjects(Game *g, int count)
{
    int died = 0, n, i;
    for (n = 0; n < count; n++) {
        for (i = 0; i < MAXOBJ; i++) {
            Obj *o = &g->obj[i];
            if (!o->alive)
                continue;
            if (o->type == 'e') {
                died |= GhostMove(g, o);
            } else if (o->type == 'b') {
                o->x += COS(o->dir) / 28;
                o->y += SIN(o->dir) / 28;
            }
        }
    }
    return died;
}

static void StartDeath(Game *g)
{
    g->state = ST_DEATH;
    g->spin_acc = 0;
    Sfx_Start(g, SFX_DEATH_CUR, SFX_DEATH_STEP);
}

static void SetMsg(Game *g, const char *s)
{
    char *p = g->msg;
    while (*s)
        *p++ = *s++;
    *p = 0;
}

static void SurvivedMsg(Game *g)
{
    /* "you survived level %d|" with the new (1-based completed) level */
    const char *s = STR_SURVIVED_FMT;
    char *p = g->msg;
    int n = g->level;
    char num[8];
    int nl = 0, i;
    while (*s && *s != '%')
        *p++ = *s++;
    if (n >= 10)
        num[nl++] = (char)('0' + n / 10);
    num[nl++] = (char)('0' + n % 10);
    for (i = 0; i < nl; i++)
        *p++ = num[i];
    s += 2; /* skip %d */
    while (*s)
        *p++ = *s++;
    *p = 0;
}

static void PlayFrame(Game *g, uint16_t pad, uint16_t pressed, int ticks)
{
    int count, died;

    PlayerMove(g, pad, ticks);

    count = (ticks + g->tick_carry) >> 2;
    g->tick_carry = (ticks + g->tick_carry) & 3;

    /* fire on Space release (B3 && B4 && ammo) */
    if (pad & IN_FIRE) {
        g->fire_pressed = 1;
    } else if (g->fire_pressed) {
        g->fire_pressed = 0;
        if (g->ammo > 0) {
            Obj *b = AllocObj(g, 'b');
            if (b) {
                b->x = g->px;
                b->y = g->py;
                b->dir = g->pdir;
                g->ammo--;
                Sfx_Start(g, SFX_SHOOT_CUR, SFX_SHOOT_STEP);
            }
        }
    }

    CheckObjects(g);
    EatDot(g);
    died = MoveObjects(g, count);

    Sfx_Tick(g);
    Sfx_Tick(g);

    if (died) {
        StartDeath(g);
        return;
    }
    if (g->dots == 0) {
        g->level++;             /* DOS increments before the message */
        SurvivedMsg(g);
        g->msg_next = MN_NEXTLEVEL;
        g->state = ST_MSG;
        return;
    }
    if (pressed & IN_MAP) {
        g->state = ST_MAP;
        return;
    }
    if (pressed & IN_WALLS) {
        SetMsg(g, g->walls_on ? STR_WALLS_OFF : STR_WALLS_ON);
        g->walls_on = !g->walls_on;
        g->msg_next = MN_GAME;
        g->state = ST_MSG;
        return;
    }
    if (pressed & IN_START) {
        SetMsg(g, STR_PAUSED);
        g->msg_next = MN_GAME;
        g->state = ST_MSG;
        return;
    }
}

static void MsgContinue(Game *g)
{
    switch (g->msg_next) {
    case MN_GAME:
        g->state = ST_GAME;
        break;
    case MN_RESTART:
        RestartLevel(g);
        break;
    case MN_NEXTLEVEL:
        if (g->level >= 5) {
            g->state = ST_WIN;
            g->scroll = 0;
        } else {
            KillType(g, 'b');
            KillType(g, 'a');
            KillType(g, 'e');
            g->rng = g->frame;
            LoadLevel(g, g->level);
            SpawnPlayer(g);
            SpawnGhosts(g);
            SpawnAmmo(g);
            g->state = ST_GAME;
        }
        break;
    case MN_TITLE:
        g->state = ST_TITLE;
        g->scroll = 0;
        break;
    }
}

void Game_Init(Game *g)
{
    Zero(g, sizeof(*g));
    g->state = ST_TITLE;
    g->walls_on = 1;
}

void Game_Frame(Game *g, uint16_t pad, int vticks)
{
    uint16_t pressed;
    int ticks = 0;

    g->frame++;
    /* DOS ticks accrue only while playing or dying (modals clear them). */
    if (g->state == ST_GAME || g->state == ST_DEATH) {
        g->tick_acc += 7 * vticks;      /* 70 Hz vs 60 Hz vblank */
        ticks = (int)(g->tick_acc / 6);
        g->tick_acc %= 6;
    }

    pressed = (uint16_t)(pad & ~g->prev_pad);
    g->prev_pad = pad;

    switch (g->state) {
    case ST_TITLE:
        if (pad & IN_UP) {
            if (g->scroll > 0)
                g->scroll -= 2;
        }
        if (pad & IN_DOWN) {
            if (g->scroll < TITLE_SCROLL_MAX)
                g->scroll += 2;
        }
        if (pressed & IN_START)
            NewGame(g);
        break;
    case ST_GAME:
        if ((pad & (IN_START | IN_WALLS)) == (IN_START | IN_WALLS)) {
            /* START+C chord = ESC: quit to title */
            KillType(g, 'b');
            KillType(g, 'a');
            g->state = ST_TITLE;
            g->scroll = 0;
            break;
        }
        PlayFrame(g, pad, pressed, ticks);
        break;
    case ST_MAP:
        if (pressed & (IN_MAP | IN_START | IN_FIRE))
            g->state = ST_GAME;
        break;
    case ST_MSG:
        if (pressed & IN_START)
            MsgContinue(g);
        break;
    case ST_DEATH:
        Sfx_Tick(g);
        Sfx_Tick(g);
        g->spin_acc += ticks * 8;
        g->pdir = (g->pdir + ticks * 8) & 0x3FF;
        if (g->spin_acc >= 0x400) {
            g->deaths++;
            KillType(g, 'b');
            if (g->deaths >= 3) {
                SetMsg(g, STR_GAME_OVER);
                g->msg_next = MN_TITLE;
            } else {
                SetMsg(g, STR_EATEN);
                g->msg_next = MN_RESTART;
            }
            g->state = ST_MSG;
        }
        break;
    case ST_WIN:
        if (pad & IN_UP) {
            if (g->scroll > 0)
                g->scroll -= 2;
        }
        if (pad & IN_DOWN) {
            if (g->scroll < WIN_SCROLL_MAX)
                g->scroll += 2;
        }
        if (pressed & IN_START) {
            g->state = ST_TITLE;
            g->scroll = 0;
        }
        break;
    }
}
