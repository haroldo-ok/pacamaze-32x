/* Host test: drive game core + renderer, dump PPMs, assert logic. */
#include <stdio.h>
#include <stdlib.h>
#include "game.h"
#include "render.h"
#include "../gen/assets.h"

static int fails = 0;
#define CHECK(cond, label) do { \
    if (!(cond)) { printf("FAIL: %s\n", label); fails++; } \
    else { printf("ok: %s\n", label); } \
} while (0)

static void DumpPPM(const char *path, const uint8_t *fb)
{
    FILE *f = fopen(path, "wb");
    int i;
    if (!f) {
        printf("FAIL: cannot write %s (missing dir?)\n", path);
        fails++;
        return;
    }
    fprintf(f, "P6\n320 200\n255\n");
    for (i = 0; i < 320 * 200; i++) {
        uint16_t v = A_PAL[fb[i]];
        uint8_t px[3];
        px[0] = (uint8_t)(((v) & 31) * 255 / 31);
        px[1] = (uint8_t)(((v >> 5) & 31) * 255 / 31);
        px[2] = (uint8_t)(((v >> 10) & 31) * 255 / 31);
        fwrite(px, 1, 3, f);
    }
    fclose(f);
}

int main(void)
{
    static Game g;
    setvbuf(stdout, 0, _IONBF, 0);
    static uint8_t fb[320 * 200];
    int i, dots0;

    Game_Init(&g);
    CHECK(g.state == ST_TITLE, "boot to title");
    Game_Frame(&g, 0, 1);
    Render(&g, fb);
    DumpPPM("tests/out/title.ppm", fb);

    /* title scroll */
    for (i = 0; i < 10; i++)
        Game_Frame(&g, IN_DOWN, 1);
    CHECK(g.scroll == 20, "title scrolls");
    for (i = 0; i < 10; i++)
        Game_Frame(&g, IN_UP, 1);
    CHECK(g.scroll == 0, "title scroll back");

    /* start game */
    Game_Frame(&g, IN_START, 1);
    Game_Frame(&g, 0, 1);
    CHECK(g.state == ST_GAME, "START begins game");
    CHECK(g.level == 0 && g.dots > 100, "level 0 loaded with dots");
    dots0 = g.dots;
    Render(&g, fb);
    DumpPPM("tests/out/game0.ppm", fb);

    /* turn left: 30 frames x 7/6 ticks x 7 dir-units = 245 units */
    {
        int d0 = g.pdir;
        for (i = 0; i < 30; i++)
            Game_Frame(&g, IN_LEFT, 1);
        CHECK(g.state == ST_GAME && g.pdir == ((d0 - 245) & 0x3FF),
              "turn left 245 units");
    }

    /* walk forward: eats new dots */
    for (i = 0; i < 150 && g.state == ST_GAME && g.dots == dots0; i++)
        Game_Frame(&g, IN_UP, 1);
    CHECK(g.score > 0 && g.dots < dots0, "forward walk eats dots");
    while (g.state == ST_DEATH)
        Game_Frame(&g, 0, 1);
    if (g.state == ST_MSG) {
        Game_Frame(&g, IN_START, 1);
        Game_Frame(&g, 0, 1);
    }
    Render(&g, fb);
    DumpPPM("tests/out/game1.ppm", fb);

    /* map modal */
    Game_Frame(&g, IN_MAP, 1);
    Game_Frame(&g, 0, 1);
    CHECK(g.state == ST_MAP, "map opens");
    Render(&g, fb);
    DumpPPM("tests/out/map.ppm", fb);
    Game_Frame(&g, IN_MAP, 1);
    Game_Frame(&g, 0, 1);
    CHECK(g.state == ST_GAME, "map closes");

    /* walls toggle modal */
    Game_Frame(&g, IN_WALLS, 1);
    Game_Frame(&g, 0, 1);
    CHECK(g.state == ST_MSG && !g.walls_on, "walls off modal");
    Render(&g, fb);
    DumpPPM("tests/out/msg.ppm", fb);
    Game_Frame(&g, IN_START, 1);
    Game_Frame(&g, 0, 1);
    CHECK(g.state == ST_GAME, "modal dismisses");

    /* fire a bullet (release edge) */
    g.ammo = 3;
    Game_Frame(&g, IN_FIRE, 1);
    Game_Frame(&g, 0, 1);
    {
        int nb = 0;
        for (i = 0; i < MAXOBJ; i++)
            if (g.obj[i].alive && g.obj[i].type == 'b')
                nb++;
        CHECK(nb == 1 && g.ammo == 2, "bullet fires on release");
    }
    Render(&g, fb);
    DumpPPM("tests/out/game2.ppm", fb);

    /* forced death -> eaten msg -> restart */
    for (i = 0; i < MAXOBJ; i++)
        if (g.obj[i].alive && g.obj[i].type == 'b')
            g.obj[i].alive = 0;
    for (i = 0; i < MAXOBJ; i++)
        if (g.obj[i].alive && g.obj[i].type == 'e') {
            g.obj[i].x = g.px;
            g.obj[i].y = g.py;
            g.obj[i].dirword = 0;
            g.obj[i].steps = 100;
            break;
        }
    for (i = 0; i < 5 && g.state != ST_DEATH; i++)
        Game_Frame(&g, 0, 1);
    CHECK(g.state == ST_DEATH, "ghost touch kills");
    for (i = 0; i < 200 && g.state == ST_DEATH; i++)
        Game_Frame(&g, 0, 1);
    CHECK(g.state == ST_MSG && g.deaths == 1, "death ends in eaten msg");
    Game_Frame(&g, IN_START, 1);
    Game_Frame(&g, 0, 1);
    CHECK(g.state == ST_GAME, "restart after death");

    /* level-complete flow to WIN */
    for (;;) {
        g.wordmap[MapIdx(g.px, g.py)] = 0x2400;
        g.dots = 1;
        Game_Frame(&g, 0, 1);
        if (g.state != ST_MSG)
            break;
        Game_Frame(&g, IN_START, 1);
        Game_Frame(&g, 0, 1);
        if (g.state == ST_WIN)
            break;
        if (g.state != ST_GAME)
            break;
    }
    CHECK(g.state == ST_WIN, "surviving level 5 wins");
    Render(&g, fb);
    DumpPPM("tests/out/win.ppm", fb);
    Game_Frame(&g, IN_START, 1);
    Game_Frame(&g, 0, 1);
    CHECK(g.state == ST_TITLE, "win returns to title");

    printf(fails ? "HOST TESTS FAILED (%d)\n" : "HOST TESTS PASSED\n", fails);
    return fails ? 1 : 0;
}
