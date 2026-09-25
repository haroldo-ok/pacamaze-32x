/* Pacamaze 32X - video/pad/input primitives. */
#include "mars.h"
#include "hw_32x.h"

#define FB_LINETABLE ((volatile uint16_t *)0x24000000)
#define FB_PIX       ((volatile uint8_t  *)0x24000200)

volatile uint8_t *HW_BackBufferBase(void)
{
    return (volatile uint8_t *)FB_PIX;
}

static void init_linetable(void)
{
    int i;
    volatile uint16_t *lt = FB_LINETABLE;
    for (i = 0; i < SCR_H; i++)
        lt[i] = (uint16_t)(i * (SCR_W / 2) + 0x100);
    for (; i < 256; i++)
        lt[i] = (uint16_t)((SCR_H - 1) * (SCR_W / 2) + 0x100);
}

void HW_InitVideo(void)
{
    int i;

    /* wait until the 68000 hands the VDP over to us (FM=1) */
    while ((MARS_SYS_INTMSK & MARS_SH2_ACCESS_VDP) == 0)
        ;

    MARS_VDP_DISPMODE = (uint16_t)(MARS_224_LINES | MARS_VDP_MODE_256);

    /* build the line table and clear both framebuffers */
    for (i = 0; i < 2; i++) {
        volatile uint32_t *p = (volatile uint32_t *)FB_PIX;
        int n;
        init_linetable();
        for (n = 0; n < SCR_W * SCR_H / 4; n++)
            p[n] = 0;
        HW_Flip();
    }
}

void HW_SetPalette(const uint16_t *pal256)
{
    int i;
    /* CRAM is only writable when we own the VDP; safest in vblank */
    while (!(MARS_VDP_FBCTL & MARS_VDP_VBLK))
        ;
    for (i = 0; i < 256; i++)
        MARS_CRAM[i] = pal256[i];
}

void HW_Flip(void)
{
    uint16_t cur = (uint16_t)(MARS_VDP_FBCTL & MARS_VDP_FS);
    uint16_t want = (uint16_t)(cur ^ MARS_VDP_FS);
    MARS_VDP_FBCTL = want;
    while ((MARS_VDP_FBCTL & MARS_VDP_FS) != want)
        ;
}

uint16_t HW_Pad(void)
{
    /* mask to the reliable 3-button subset (skill: d-pad mirror trap) */
    return (uint16_t)(MARS_SYS_COMM8 &
        (PAD_UP | PAD_DOWN | PAD_LEFT | PAD_RIGHT | PAD_A | PAD_B | PAD_C | PAD_START));
}

uint16_t HW_VBlankCount(void)
{
    return MARS_SYS_COMM10;
}
