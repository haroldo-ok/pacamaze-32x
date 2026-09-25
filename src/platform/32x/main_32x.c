/* Pacamaze 32X - master SH-2 entry and main loop. */
#include "mars.h"
#include "hw_32x.h"
#include "game.h"
#include "render.h"
#include "../gen/assets.h"

/* force a .data section so the ELF layout stays header-shaped */
static volatile uint16_t g_data_guard = 0x1234;

static Game G;

static uint16_t MapPad(uint16_t p)
{
    uint16_t in = 0;
    if (p & PAD_UP)
        in |= IN_UP;
    if (p & PAD_DOWN)
        in |= IN_DOWN;
    if (p & PAD_LEFT)
        in |= IN_LEFT;
    if (p & PAD_RIGHT)
        in |= IN_RIGHT;
    if (p & PAD_A)
        in |= IN_FIRE;
    if (p & PAD_B)
        in |= IN_MAP;
    if (p & PAD_C)
        in |= IN_WALLS;
    if (p & PAD_START)
        in |= IN_START;
    return in;
}

int main(void)
{
    uint32_t timeout;
    uint16_t frame = 0;
    uint16_t last_vb;

    (void)g_data_guard;

    /* wait (bounded) for the BIOS slave handshake */
    for (timeout = 0; timeout < 2000000; timeout++) {
        if (MARS_SYS_COMM4 == MAGIC_S_OK)
            break;
    }

    MARS_SYS_COMM0 = MAGIC_BOOT;

    HW_InitVideo();
    HW_SetPalette(A_PAL);

    MARS_SYS_COMM0 = MAGIC_VIDEO;

    Game_Init(&G);
    last_vb = HW_VBlankCount();

    for (;;) {
        uint16_t vb = HW_VBlankCount();
        int vt = (int)(uint16_t)(vb - last_vb);
        volatile uint8_t *fb;
        if (vt < 1)
            vt = 1;
        if (vt > 4)
            vt = 4;
        last_vb = vb;

        Game_Frame(&G, MapPad(HW_Pad()), vt);

        fb = HW_BackBuffer() + GAME_Y0 * SCR_W;
        Render(&G, (uint8_t *)fb);

        /* audio word for the slave: bit15 = valid, freq Hz */
        if (G.sfx_cur > 0)
            MARS_SYS_COMM4 = (uint16_t)(0x8000 | (G.sfx_cur & 0x7FFF));
        else
            MARS_SYS_COMM4 = 0;

        /* telemetry: state, level, deaths */
        MARS_SYS_COMM14 =
            (uint16_t)(G.state | (G.level << 4) | (G.deaths << 8));

        HW_Flip();
        MARS_SYS_COMM2 = frame;
        frame++;
    }

    return 0;
}
