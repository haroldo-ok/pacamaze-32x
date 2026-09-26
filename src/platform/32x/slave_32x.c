/* Pacamaze 32X - slave SH-2: PWM sample player + heartbeat.
 * COMM4 from master: bit15 = trigger toggle (edge = new sample),
 * low 3 bits = sample id (src/gen/sfx.h). One preemptive voice: a new
 * trigger restarts playback from the sample head; id 0 stops.
 *
 * PWM programming follows Chilly Willy's real-hardware recipe
 * (SpritesMind forum topic 385): CYCLE = (((SHCLK<<1)/RATE+1)>>1)+1
 * (0x415 for 22050 Hz NTSC), CTRL = 0x0185, FULL polled on the channel
 * register (MONO & 0x8000). Pulse widths are SH-2 clocks within one
 * CYCLE period, so silence is ~CYCLE/2: samples are centered on 517
 * inside a 2..1032 window. Samples are 11025 Hz u8 in ROM; each byte
 * is emitted twice to match the 22050 Hz PWM clock, and silence (517)
 * is emitted while idle so the FIFO never underruns.
 *
 * The MIN->CENTER anti-click ramp is interleaved with playback (not
 * blocking): the DAC slews from 2 to 517 over ~1.5 s while triggers
 * stay live, so boot is silent and no SFX is ever lost in a ramp. */
#include "mars.h"
#include "hw_32x.h"
#include "../gen/sfx.h"

#define PWM_RATE 22050
#define PWM_MIN 2
#define PWM_CENTER 517
#define PWM_MAX 1032
#define PWM_CYCLE_NTSC 0x415
#define PWM_CYCLE_PAL 0x40B
/* Slew speed: +1 DAC step per RAMP_DIV samples. 64 ~= 1.5 s for the
 * full MIN->CENTER drift (Chilly's reference is ~2 s): slow enough to
 * be inaudible, fast enough to finish during the title screen. */
#define RAMP_DIV 64
/* FULL-wait spin bound: the 3-deep FIFO drains in ~2 sample periods
 * (~2000 SH-2 cycles), so on hardware the wait below always exits on
 * its own. The bound only trips on emulators that don't model the
 * FULL bit, where falling through and writing still plays. */
#define PWM_SPIN_BOUND 4000

static void PwmOut(uint16_t v)
{
    uint32_t spin = PWM_SPIN_BOUND;
    while ((MARS_PWM_MONO & MARS_PWM_FULL) && spin)
        spin--;
    MARS_PWM_MONO = v;
}

void slave_main(void)
{
    uint16_t beat = 0;
    uint16_t last;
    uint16_t level = PWM_MIN;
    uint16_t div = 0;
    uint8_t rep = 0;
    const uint8_t *ptr = 0;
    uint16_t left = 0;
    uint8_t cur = 128;

    while (MARS_SYS_COMM0 != MAGIC_VIDEO)
        ;

    /* init the sound hardware */
    MARS_PWM_MONO = 1;
    MARS_PWM_MONO = 1;
    MARS_PWM_MONO = 1;
    if (MARS_VDP_DISPMODE & MARS_NTSC_FORMAT)
        MARS_PWM_CYCLE = PWM_CYCLE_NTSC;
    else
        MARS_PWM_CYCLE = PWM_CYCLE_PAL;
    MARS_PWM_CTRL = 0x0185;

    last = (uint16_t)(MARS_SYS_COMM4 & ~7);

    for (;;) {
        uint16_t w = MARS_SYS_COMM4;
        int target, out;
        if (((w ^ last) & 0x8000) != 0) {
            uint16_t id = (uint16_t)(w & 7);
            if (id == SFX_NONE || id >= SFX_COUNT) {
                left = 0;
            } else {
                ptr = SFX_DATA[id];
                left = SFX_LEN[id];
                rep = 0;
            }
        }
        last = (uint16_t)(w & ~7);
        if (left) {
            if (!rep)
                cur = *ptr++;
            rep ^= 1;
            if (!rep)
                left--;
        } else {
            cur = 128;
        }
        target = PWM_CENTER + ((int)cur - 128) * 4;
        if (level < PWM_CENTER) {
            /* still ramping: voice rides on the slew (clamped) so an
             * early trigger keeps its attack under the fade-in */
            if (++div >= RAMP_DIV) {
                div = 0;
                level++;
            }
            out = (int)level + (target - PWM_CENTER);
            if (out < PWM_MIN)
                out = PWM_MIN;
            else if (out > PWM_MAX)
                out = PWM_MAX;
        } else {
            out = target;
        }
        PwmOut((uint16_t)out);
        MARS_SYS_COMM6 = beat;
        beat++;
    }
}
