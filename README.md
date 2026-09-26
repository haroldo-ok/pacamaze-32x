# Pacamaze 32X

A faithful port of **Pacamaze** (DOS, 1995, by Moons Vestin — "Doom meets Pac-Man")
to the **Sega 32X**, reverse-engineered from the original `PACAMAZE.EXE`.

First-person maze shooting: eat all the dots, avoid or shoot the ghosts,
survive all 5 levels. Verified playable in PicoDrive: `rom/pacamaze.32x`.

## Controls

| Input | Action |
|---|---|
| D-pad | Move (Up/Down) / turn (Left/Right) |
| A | Fire (press + release = one shot, needs ammo) |
| B | Fullscreen map modal |
| C | Toggle textured walls on/off |
| START | Confirm / pause |
| START + C | Quit to title |

## Quick start

Requirements: Linux x86-64, `curl`, `sudo` (toolchain installs to `/opt`),
`python3`, `cc`.

```sh
bash setup.sh   # one-shot/idempotent: installs the 32X toolchain (Chilly Willy
                # 32XDK 20220418) and builds the PicoDrive test core (kept in
                # tests/emu/; rerun after any cold start that wipes /opt)
make            # builds rom/pacamaze.32x
make check      # host logic tests + ROM verify + scripted PicoDrive play tests
```

`make check` runs: 17 host assertions (`tests/host_render.c`: boot, scrolling,
turn-exactness, dots, modals, fire edge, death→restart, 5 levels→win→title),
static ROM verification, and 6 scripted emulator play-throughs
(`tests/scripts/*.txt`: boot, menu, gameplay, modals, FPS probe, buttons).

## Layout

```
src/core/          portable game core: game.c/h (logic), render.c/h (raycaster)
src/gen/           generated asset tables (assets.c/h, sfx.c/h; see tools/mk*.py)
src/platform/32x/  boot (crt0.s, m68k.s), video/pad (hw_32x.*), main loop,
                   slave PWM sample player (slave_32x.c), linker scripts
original/          original DOS game data (levels, art, palette, strings)
sfx_src/orig/      Brutal Doom v21 SFX extracts (see tools/mksfx.py)
tools/mkassets.py  build-time data converter (original/* -> src/gen/assets.*)
tools/mksfx.py     SFX converter (sfx_src/orig/* -> src/gen/sfx.*)
re/                disassembly dumps used for the RE (re-skill workflow)
decoded/           RE working notes
docs/GAME_SPEC.md  full mechanics spec derived from the disassembly
tests/             host tests + PicoDrive harness, scripts, verifier
emu/               DOS reference screenshots from the original
```

## Port notes

- **Faithful core:** 70 Hz tick model, greedy ghost AI, newest-bullet kill aura,
  ammo economy (+5 at ghost corners), original speeds, SFX trigger points, HUD text, 5 levels.
- **Faithful renderer:** 256-ray walls with DOS-identical distance/shade math,
  RECIP floor projection (128 samples/row × 2 px), billboard sprites, sidebar/radar,
  map overlay, msgboxes, scrolling title/win screens — original art + palette.
- **32X adaptations:** 320×200 index window centered in the 320×224 8bpp
  framebuffer (original palette via CRAM), gamepad mapping above, slave-SH-2
  Brutal Doom sample SFX, vblank-normalized ticks so game speed is correct at any
  frame rate (~12–16 fps on the SH-2s).
- Render is SH-2-tuned without changing pixels: pointer stores, floor
  texel-run cache, division tables.

## Sound effects

The PC-speaker chirps are replaced by 7 short samples from
[Brutal Doom v21](https://www.moddb.com/mods/brutal-doom) (by SgtMarkIV),
converted to 11025 Hz 8-bit mono (~46 KB in ROM):

| Event | Sample (path inside `brutalv21.pk3`) |
|---|---|
| Dot eaten | `SOUNDS/ITEMS/CLIPICK` |
| Ammo pickup | `SOUNDS/ITEMS/DSITEMUP` |
| Player shot | `SOUNDS/HD/DSFIRSHT` (head-trimmed) |
| Ghost shot / bullet splat | `SOUNDS/COMBAT/MELEE/DSPUNCH2` |
| Player death | `SOUNDS/HD/DSPLDETH` |
| UI blip (map/walls/pause/msgbox) | `SOUNDS/HD/DSSWTCHN` (trimmed) |
| Level clear | `SOUNDS/D2SSECRET` (trimmed) |

Byte-exact originals live in `sfx_src/orig/` (see `sfx_src/SOURCES.txt` for
archive MD5 + provenance); `tools/mksfx.py` decodes (Doom DMX / RIFF WAV),
trims, DC-strips, normalizes, resamples, and emits `src/gen/sfx.*`.
DOS chirp trigger points are unchanged; the ammo pickup (DOS played the kill
chirp there) got its own pickup sample, and the UI/fanfare sounds are new.

Playback (real-hardware rules): the slave SH-2 runs a single preemptive
voice fed by COMM4 (`bit15` = trigger toggle, low 3 bits = sample id),
each byte emitted twice into the 22050 Hz PWM clock (CYCLE `0x415` NTSC /
`0x40B` PAL, CTRL `0x185`, FULL polled on MONO, 517-centered samples with a
non-blocking MIN->CENTER anti-click ramp — Chilly Willy's recipe). Verified
end-to-end by capturing the emulator's audio (`HARNESS_WAV=out.wav`, see
`tools/finalize_wav.py`): correct sample per trigger, correct speed, mono,
silent while idle. Note: PicoDrive renders a ~100 ms filtered thump during
black-screen boot (its empty-PWM-FIFO model); on hardware the ramp keeps
boot silent.

## Sources & credits

- Original game: Pacamaze (1995, Moons Vestin), data in `original/` supplied by the user.
- Boot/link/video/COMM patterns: MIT-licensed [hexgl-32x](https://github.com/haroldo-ok/hexgl-32x.git)
  (see `docs/BOOTFOUNDATION_LICENSE_MIT`).
- Toolchain: [32XDK 20220418](https://github.com/viciious/32XDK/releases) (GCC 12.1).
- Test emulator: [PicoDrive](https://github.com/libretro/picodrive.git) libretro core.
- Sound effects: short excerpts from Brutal Doom v21 (SgtMarkIV,
  https://www.moddb.com/mods/brutal-doom); see `sfx_src/SOURCES.txt`.
  Sounds remain (c) their authors — replace before any commercial use.
