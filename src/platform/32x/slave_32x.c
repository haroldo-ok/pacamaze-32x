/* Pacamaze 32X - slave SH-2: PWM square-wave SFX + heartbeat.
 * COMM4 from master: bit15 = valid, low 15 bits = frequency Hz. */
#include "mars.h"
#include "hw_32x.h"

/* PWM sample rate with CYCLE=0x1FF is ~22 kHz; phase step per sample
 * for frequency f: f * 65536 / rate. Pitch is approximate by design. */
#define PHASE_RATE 3

void slave_main(void)
{
    uint16_t beat = 0;
    uint32_t phase = 0;
    uint16_t freq = 0;

    while (MARS_SYS_COMM0 != MAGIC_VIDEO)
        ;

    MARS_PWM_CYCLE = 0x1FF;

    for (;;) {
        uint16_t w = MARS_SYS_COMM4;
        int16_t sample;
        if (w & 0x8000)
            freq = (uint16_t)(w & 0x7FFF);
        else
            freq = 0;
        phase += (uint32_t)freq * PHASE_RATE;
        sample = (phase & 0x8000) ? 2000 : -2000;
        if (!freq)
            sample = 0;
        while (MARS_PWM_CTRL & MARS_PWM_FULL)
            ;
        MARS_PWM_MONO = (uint16_t)sample;
        MARS_SYS_COMM6 = beat;
        beat++;
    }
}
