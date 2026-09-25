/*
 * HexGL 32X - SEGA 32X (Mars) hardware definitions, SH2 side.
 * Written from the public 32X hardware register map.
 */
#ifndef MARS_H
#define MARS_H

#include <stdint.h>

/* system registers */
#define MARS_SYS_INTMSK     (*(volatile uint16_t *)0x20004000)
#define MARS_SYS_COMM0      (*(volatile uint16_t *)0x20004020)
#define MARS_SYS_COMM2      (*(volatile uint16_t *)0x20004022)
#define MARS_SYS_COMM4      (*(volatile uint16_t *)0x20004024)
#define MARS_SYS_COMM6      (*(volatile uint16_t *)0x20004026)
#define MARS_SYS_COMM8      (*(volatile uint16_t *)0x20004028)
#define MARS_SYS_COMM10     (*(volatile uint16_t *)0x2000402A)
#define MARS_SYS_COMM12     (*(volatile uint16_t *)0x2000402C)
#define MARS_SYS_COMM14     (*(volatile uint16_t *)0x2000402E)

#define MARS_SH2_ACCESS_VDP 0x8000  /* FM bit as seen from the SH2 */

/* 32X VDP */
#define MARS_VDP_DISPMODE   (*(volatile uint16_t *)0x20004100)
#define MARS_VDP_FILLEN     (*(volatile uint16_t *)0x20004104)
#define MARS_VDP_FILADR     (*(volatile uint16_t *)0x20004106)
#define MARS_VDP_FILDAT     (*(volatile uint16_t *)0x20004108)
#define MARS_VDP_FBCTL      (*(volatile uint16_t *)0x2000410A)

#define MARS_VDP_MODE_OFF   0x0000
#define MARS_VDP_MODE_256   0x0001  /* packed pixel, 8bpp */
#define MARS_VDP_MODE_32K   0x0002
#define MARS_VDP_MODE_RLE   0x0003
#define MARS_VDP_PRIO_32X   0x0080
#define MARS_224_LINES      0x0000
#define MARS_240_LINES      0x0040
#define MARS_NTSC_FORMAT    0x8000

#define MARS_VDP_VBLK       0x8000
#define MARS_VDP_HBLK       0x4000
#define MARS_VDP_PEN        0x2000
#define MARS_VDP_FEN        0x0002
#define MARS_VDP_FS         0x0001

/* palette RAM: 256 entries, --BBBBBGGGGGRRRRR, bit15 = priority */
#define MARS_CRAM           ((volatile uint16_t *)0x20004200)

/* frame buffer: 0x100 line-table words, then pixel data */
#define MARS_FRAMEBUFFER    ((volatile uint16_t *)0x24000000)
#define MARS_FB_PIXELS      ((uint8_t *)0x24000200)

/* PWM sound unit */
#define MARS_PWM_CTRL       (*(volatile uint16_t *)0x20004030)
#define MARS_PWM_CYCLE      (*(volatile uint16_t *)0x20004032)
#define MARS_PWM_LCH        (*(volatile uint16_t *)0x20004034)
#define MARS_PWM_RCH        (*(volatile uint16_t *)0x20004036)
#define MARS_PWM_MONO       (*(volatile uint16_t *)0x20004038)

#define MARS_PWM_FULL       0x8000
#define MARS_PWM_EMPTY      0x4000

/* pad bits published by the 68000 in COMM8 (active high) */
#define PAD_UP     0x0001
#define PAD_DOWN   0x0002
#define PAD_LEFT   0x0004
#define PAD_RIGHT  0x0008
#define PAD_B      0x0010
#define PAD_C      0x0020
#define PAD_A      0x0040
#define PAD_START  0x0080

#endif
