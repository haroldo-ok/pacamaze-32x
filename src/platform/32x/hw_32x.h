/* Pacamaze 32X - hardware shell API (master SH-2 side). */
#ifndef HW_32X_H
#define HW_32X_H

#include <stdint.h>

/* Framebuffer geometry: full 32X frame 320x224, game renders a 320x200
 * window centered vertically (12px black bars top/bottom). */
#define SCR_W       320
#define SCR_H       224
#define GAME_W      320
#define GAME_H      200
#define GAME_Y0     12

/* COMM mailbox map (do not collide; see docs/GAME_SPEC.md + skill arch notes):
 *   COMM0  master->all : boot/video magic (write-once at startup)
 *   COMM2  master->test: frame heartbeat (increments every game frame)
 *   COMM4  master->slave: sfx trigger (bit15 = toggle edge, low 3 = id)
 *   COMM6  slave->test : slave heartbeat (increments every slave loop)
 *   COMM8  68k->master : pad state (3-button subset, active high)
 *   COMM10 68k->master : vblank counter
 *   COMM12 master->slave: render command (0 = idle)
 *   COMM14 master->test: game-state telemetry {state, level, ...} */
#define MAGIC_BOOT  0x504D  /* 'PM' */
#define MAGIC_VIDEO 0x5644  /* 'VD' */
#define MAGIC_S_OK  0x535F  /* BIOS slave handshake */

void HW_InitVideo(void);        /* wait FM, set 8bpp 224-line mode, clear both buffers */
void HW_SetPalette(const uint16_t *pal256); /* 256 BGR555 entries, waits for vblank */
void HW_Flip(void);             /* request buffer flip, wait for it */
uint16_t HW_Pad(void);          /* COMM8 pad state, masked to 3-button subset */
uint16_t HW_VBlankCount(void);  /* COMM10 */

/* back-buffer pixel pointer (8bpp); row y starts at base + y*SCR_W */
static inline volatile uint8_t *HW_BackBuffer(void)
{
    extern volatile uint8_t *HW_BackBufferBase(void);
    return HW_BackBufferBase();
}

#endif
