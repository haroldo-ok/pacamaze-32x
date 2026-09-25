#!/usr/bin/env python3
"""Pacamaze-32X asset converter: DOS data files -> C sources.

Reads original/* + PACAMAZE.EXE (strings/tables) and emits:
  src/gen/assets.h   declarations + palette + strings
  src/gen/assets.c   bulk binary blobs

Faithful transforms baked in (from RE of readpixmaps/readmap):
  - FI3.3D bytes 0x21..0x3F get +0x7A (blue body -> magenta in-game)
  - PIXMAP9/10 bytes < 0x40 get |0x40 (blue radial -> teal floor)
  - wall PIX files loaded sequentially, accessed column-major by renderer
"""
import os
import re
import struct
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ORIG = os.path.join(ROOT, 'original')
GEN = os.path.join(ROOT, 'src', 'gen')

EXE = open(os.path.join(ORIG, 'PACAMAZE.EXE'), 'rb').read()
DSBASE = 0x60A0  # data-segment file base


def ds_bytes(off, n):
    return EXE[DSBASE + off:DSBASE + off + n]


def ds_str(off, maxlen=64):
    raw = ds_bytes(off, maxlen)
    return raw.split(b'\x00')[0].decode('ascii')


def c_esc(s):
    return s.replace('\\', '\\\\').replace('"', '\\"')


def emit_array(f, ctype, name, data, per_line=16):
    f.write(f'const {ctype} {name}[{len(data)}] = {{\n')
    for i in range(0, len(data), per_line):
        chunk = data[i:i + per_line]
        f.write('    ' + ', '.join(str(v) for v in chunk) + ',\n')
    f.write('};\n')


def main():
    os.makedirs(GEN, exist_ok=True)

    pal = open(os.path.join(ORIG, 'COLOR.3D'), 'rb').read()
    assert len(pal) == 768
    cram = []
    rgb888 = []
    for i in range(256):
        r, g, b = pal[i * 3], pal[i * 3 + 1], pal[i * 3 + 2]
        cram.append(((b >> 1) << 10) | ((g >> 1) << 5) | (r >> 1))
        rgb888.extend([r * 4, g * 4, b * 4])

    font = open(os.path.join(ORIG, 'TYPER.3D'), 'rb').read()
    assert len(font) == 3744  # 39 glyphs x 96 bytes, 8x12 row-major

    kartas = []
    for lvl in range(5):
        k = open(os.path.join(ORIG, f'KARTA{lvl}.3D'), 'rb').read()
        assert len(k) == 1024 and set(k) <= {0, 1}
        kartas.append(k)

    walls = []  # set0 = PIX11..14, set1 = PIX21..24
    for a in (1, 2):
        for b in (1, 2, 3, 4):
            w = open(os.path.join(ORIG, f'PIX{a}{b}.3D'), 'rb').read()
            assert len(w) == 1024
            walls.append(w)

    def floormap(name):
        d = bytearray(open(os.path.join(ORIG, name), 'rb').read())
        assert len(d) == 1024
        for i, v in enumerate(d):
            if v < 0x40:
                d[i] = v | 0x40
        return bytes(d)

    floor_eaten = floormap('PIXMAP9.3D')    # eaten cells (plain)
    floor_dot = floormap('PIXMAP10.3D')     # uneaten cells (yellow dot baked)

    fi1 = open(os.path.join(ORIG, 'FI1.3D'), 'rb').read()
    fi3 = bytearray(open(os.path.join(ORIG, 'FI3.3D'), 'rb').read())
    for i, v in enumerate(fi3):
        if 0x21 <= v <= 0x3F:
            fi3[i] = (v + 0x7A) & 0xFF
    fi3 = bytes(fi3)
    bullet = open(os.path.join(ORIG, 'BULLET1.3D'), 'rb').read()
    assert len(fi1) == len(fi3) == len(bullet) == 1024
    # FI2.3D exists on disk but is never referenced by the EXE: skipped.

    pac = open(os.path.join(ORIG, 'PAC.3D'), 'rb').read()
    assert len(pac) == 100

    sintab = struct.unpack('<1024h', open(os.path.join(ORIG, 'SINTAB.3D'), 'rb').read())
    assert max(sintab) == 256 and min(sintab) == -255

    # Map-overlay player arrows: 4 different 5x5 readings of PAC.3D bytes
    # (drawmap branches; byte[r][c] drawn at screen (px+r, py+c)).
    arrows = []
    for branch in range(4):
        stamp = []
        for r in range(5):
            for c in range(5):
                if branch == 0:
                    idx = 80 - r * 20 + c * 2
                elif branch == 1:
                    idx = 80 + r * 2 - c * 20
                elif branch == 2:
                    idx = r * 20 + c * 2
                else:
                    idx = r * 2 + c * 20
                stamp.append(pac[idx])
        arrows.append(stamp)

    corners = struct.unpack('<10H', ds_bytes(0x94, 20))
    types = ds_bytes(0xC5, 24).decode('ascii')  # '1212 2242 2424 2444 4444'

    intro_offs = [0x225, 0x242, 0x25F, 0x27C, 0x299, 0x2B6, 0x2D3, 0x2DC,
                  0x2F9, 0x316, 0x333, 0x350, 0x36D, 0x385, 0x3A2, 0x3BF,
                  0x3DC, 0x3E5, 0x3FA, 0x40B, 0x41C, 0x435, 0x452, 0x466,
                  0x479, 0x498, 0x4B5, 0x4D2, 0x4EF, 0x50C, 0x529, 0x546,
                  0x563, 0x580, 0x59D, 0x5BA, 0x5D7, 0x5F6, 0x613]
    # dump a few more for the win/goodbye screens (wired by hand below)
    print('--- extra strings 0x546..0x620 ---')
    blob = ds_bytes(0x546, 0x620 - 0x546)
    for m in re.finditer(rb'[ -~]{2,}', blob):
        print(hex(m.start() + 0x40B), repr(m.group().decode()))
    print('--- corners/types ---')
    print('corners:', [hex(v) for v in corners])
    print('types:', repr(types))

    strs = {
        'STR_SCORE': ds_str(0x1B7),
        'STR_AMMO': ds_str(0x1BD),
        'STR_LOGO0': ds_str(0x1C2),
        'STR_LOGO1': ds_str(0x1C8),
        'STR_LOGO2': ds_str(0x1CE),
        'STR_PRESS_ENTER': ds_str(0x206),
        'STR_PAUSED': ds_str(0x11E),
        'STR_WALLS_ON': ds_str(0x12B),
        'STR_WALLS_OFF': ds_str(0x135),
        'STR_SURVIVED_FMT': ds_str(0x140),
        'STR_EATEN': ds_str(0x157),
        'STR_GAME_OVER': ds_str(0x16C),
    }
    intro = [ds_str(o) for o in intro_offs]

    with open(os.path.join(GEN, 'assets.h'), 'w') as f:
        f.write('/* Generated by tools/mkassets.py -- do not edit. */\n')
        f.write('#ifndef PACAMAZE_ASSETS_H\n#define PACAMAZE_ASSETS_H\n\n')
        f.write('#include <stdint.h>\n\n')
        f.write('extern const uint16_t A_PAL[256];\n')
        f.write('extern const uint8_t A_PAL_RGB[768];\n')
        f.write('extern const uint8_t A_FONT[39 * 96];\n')
        f.write('extern const uint8_t A_KARTA[5][1024];\n')
        f.write('extern const uint8_t A_WALLS[8][1024];\n')
        f.write('extern const uint8_t A_FLOOR0[1024];\n')
        f.write('extern const uint8_t A_FLOOR1[1024];\n')
        f.write('extern const uint8_t A_FI1[1024];\n')
        f.write('extern const uint8_t A_FI3[1024];\n')
        f.write('extern const uint8_t A_BULLET[1024];\n')
        f.write('extern const uint8_t A_PAC[100];\n')
        f.write('extern const int16_t A_SINTAB[1024];\n')
        f.write('extern const uint8_t A_ARROW[4][25];\n')
        f.write('extern const uint16_t A_CORNERS[5][2];\n')
        f.write('extern const char A_TYPES[5][4];\n')
        for name, s in strs.items():
            f.write(f'#define {name} "{c_esc(s)}"\n')
        f.write(f'\n#define A_INTRO_LINES {len(intro)}\n')
        f.write('extern const char * const A_INTRO[A_INTRO_LINES];\n')
        f.write('\nstatic inline int A_SIN(int d) { return A_SINTAB[(d) & 0x3FF]; }\n')
        f.write('static inline int A_COS(int d) { return A_SINTAB[((d) + 0x100) & 0x3FF]; }\n')
        f.write('static inline int A_FONTIDX(int c) {\n')
        f.write('    if (c > 0x2F && c < 0x3A) return c - 0x30;\n')
        f.write('    return c - 0x57;\n}\n')
        f.write('\n#endif\n')

    with open(os.path.join(GEN, 'assets.c'), 'w') as f:
        f.write('/* Generated by tools/mkassets.py -- do not edit. */\n')
        f.write('#include "assets.h"\n\n')
        f.write('const uint16_t A_PAL[256] = {\n')
        for i in range(0, 256, 8):
            f.write('    ' + ', '.join(f'0x{v:04X}' for v in cram[i:i + 8]) + ',\n')
        f.write('};\n')
        emit_array(f, 'uint8_t', 'A_PAL_RGB', rgb888)
        emit_array(f, 'uint8_t', 'A_FONT', list(font))

        def emit_blob2(name, blobs):
            f.write(f'const uint8_t {name}[{len(blobs)}][1024] = {{\n')
            for b in blobs:
                f.write('{\n')
                for i in range(0, 1024, 32):
                    f.write('    ' + ','.join(str(v) for v in b[i:i + 32]) + ',\n')
                f.write('},\n')
            f.write('};\n')

        emit_blob2('A_KARTA', kartas)
        emit_blob2('A_WALLS', walls)
        emit_array(f, 'uint8_t', 'A_FLOOR0', list(floor_eaten))
        emit_array(f, 'uint8_t', 'A_FLOOR1', list(floor_dot))
        emit_array(f, 'uint8_t', 'A_FI1', list(fi1))
        emit_array(f, 'uint8_t', 'A_FI3', list(fi3))
        emit_array(f, 'uint8_t', 'A_BULLET', list(bullet))
        emit_array(f, 'uint8_t', 'A_PAC', list(pac))
        emit_array(f, 'int16_t', 'A_SINTAB', list(sintab))
        f.write('const uint8_t A_ARROW[4][25] = {\n')
        for a in arrows:
            f.write('    {' + ','.join(str(v) for v in a) + '},\n')
        f.write('};\n')
        f.write('const uint16_t A_CORNERS[5][2] = {\n')
        for lvl in range(5):
            f.write(f'    {{{corners[lvl * 2]}, {corners[lvl * 2 + 1]}}},\n')
        f.write('};\n')
        f.write('const char A_TYPES[5][4] = {\n')
        for lvl in range(5):
            t = types[lvl * 5:lvl * 5 + 4]
            f.write("    {'" + "','".join(t) + "'},\n")
        f.write('};\n')
        for i, s in enumerate(intro):
            f.write(f'static const char intro_{i}[] = "{c_esc(s)}";\n')
        f.write('const char * const A_INTRO[A_INTRO_LINES] = {\n')
        f.write('    ' + ', '.join(f'intro_{i}' for i in range(len(intro))) + '\n')
        f.write('};\n')

    print(f'wrote src/gen/assets.h + assets.c')


if __name__ == '__main__':
    main()
