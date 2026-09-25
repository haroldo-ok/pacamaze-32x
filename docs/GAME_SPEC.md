# PACAMAZE — Game Mechanics Spec (from disassembly of PACAMAZE.EXE, 1995)

Target of port: Sega 32X. Original: DOS, Mode 13h 320x200, by Moons Vestin, 1995, freeware.
"Doom meets Pac-Man": first-person maze, eat all yellow pills, avoid/shoot ghosts.

Code addresses below are offsets into the DOS .EXE code segment (file offset = code + 0x200).
Data-segment file base = 0x60A0. RE sources: `re/*.asm` in this repo.

## 1. Coordinates & maps

- World units ("units"): 1 maze cell = 32 units. Map is 32x32 cells (1024x1024 units).
- Player spawn = (464, 496) = cell (14, 15).
- Map index: `idx = (x >> 5) + ((y >> 5) << 5)` (x = column, y = row).
- Level files `KARTA0.3D`..`KARTA4.3D`: 1024 bytes, 0 = corridor, 1 = wall.
- `readmap(level, 32, 32)` (0x119D): STRAIGHT copy file[i] -> map[i] (no transpose):
  - byte-map @ DS:0x69B3 (1024 B): corridor = 0; wall = random 1..4 (texture variant, re-rolled every load).
  - word-map @ DS:0x6DB3 (1024 words): wall = 0x2800; corridor = 0x2400 (uneaten dot).
  - ghost-corner vars: `DS:0x7EDF/0x7EE1 = table[level]` (table @ DS:0x94):
    L0:(240,784) L1:(176,848) L2:(112,912) L3/L4:(48,976).
  - loads wall textures `pix{A}{B}.3d`, A=(level&1)+1, B=1..4, 1024 B each → DS:0x3DB3+i*0x400.
  - returns dot count (#corridor cells).
- Sine table `SINTAB.3D` → DS:0x76DF: 1024 int16 words, `TAB[i] = round(sin(2*pi*i/1024)*256)`.
  `sin(d)=TAB[d&0x3FF]` (0x30A), `cos(d)=TAB[(d+0x100)&0x3FF]` (0x31C). Amplitude 256.

## 2. Timing model

- Tick source: PC PIT channel 0 reprogrammed to **70 Hz** (divisor 0x46).
  Timer ISR does `ticks++` (DS:0xAC) when enabled (DS:0xA8 != 0).
- Each frame consumes the accumulated tick count, then clears it. All speeds scale with ticks.
  32X port: 70/60 Hz rational accumulator (acc += 7*vblanks, ticks = acc/6, acc %= 6).
- Effective base speeds: player up to 256/162 u/tick (~110 u/s), turn 7 dir-units/tick,
  enemies `count=(ticks+carry)/4` move-calls per frame (carry = remainder).

## 3. Entities (gameplay lista, PREPEND insertion = newest is FIRST)

| type | char | fields | move | hit-test |
|---|---|---|---|---|
| ammo | 'a' | pos | none (returns 0) | proximity: \|dx|<10 and \|dy|<10 vs player |
| enemy | 'e' | pos, dirWord, steps, etype (step units 1/2/4) | greedy chase (see 4) | **kill-aura**: if NEWEST lista item is a live bullet within \|20\| of self |
| bullet | 'b' | pos, dir | x += COS(dir)/28, y += SIN(dir)/28 per call | byte-map at own pos (nonzero = in wall) |

- Enemy types per level (table @ DS:0xC5, ASCII): L0="1212" L1="2242" L2="2424" L3="2444" L4="4444".
  Type digit = step units per move-call (1/2/4).
- 4 ghosts spawn at the 4 corner combos (C1,C1),(C1,C2),(C2,C1),(C2,C2), C1=0x7EDF, C2=0x7EE1.
- 4 ammo pickups spawn at the same 4 corners (fresh level only).
- Sprites (all 32x32 billboards): ghosts = FI3 (spridx 5, ALL types), ammo = FI1 (spridx 6),
  bullet = BULLET1 (spridx 7). Radar colors: player 148, ghost 52, ammo 84, bullet 116.

## 4. Enemy AI (enemy::move; walk; getnewdir)

- `move(playerPos)`, called `count` times per frame:
  - At cell center (x%32==16 and y%32==16): `steps--`; if steps==0: `dirword = getnewdir()`.
  - `walk()`: move `etype` units along dirWord (-1/+1 = x∓/±, -32/+32 = y∓/±). No wall check.
  - Kill check: if |self-player| <= 16 on BOTH axes → return 1 (killed player), else 0.
- `getnewdir()`: greedy chase with int16-wrapped deltas. d = player - self per axis; dominant axis first.
  Try in order: dirTowardDominant, dirTowardOther, -dirTowardOther, -dirTowardDominant;
  pick first whose neighboring cell (offset ±1/±32 in idx) is byte-map 0 (out-of-range = wall in port).
  Then count free cells `dist` along that direction (walk to wall), set `steps = random(1..dist)`.
  Returns dir or 0 (0 = stop). if player delta is (0,0): return 0 with steps=1.
- Ghost respawn-on-shot (0xD15): dominant axis = the one where player is FARTHER from 512;
  that coord = OPPOSITE corner (player>512 → C1 else C2), other coord = random corner; steps=1.

## 5. Player (moveplayer, turn)

- Spawn: pos (464,496), dir = 0x100.
- DOS keys: Up=fwd, Down=back, Left/Right=turn, Space press+release=fire, M=map, W=walls, P=pause, ESC=quit.
- Forward: single combined probe = pos + (cos/10, sin/10); if byte-map at probe == 0:
  `pos += (cos*ticks/162, sin*ticks/162)`. Backward: probe with subtraction, same move negated.
- Turn: `amount = ticks*7`; LEFT has priority: if left: dir -= amount elif right: dir += amount; dir &= 0x3FF.

## 6. Shooting (@shot, bullet_ctor)

- Fire iff space-pressed(B3) AND space-released(B4) AND ammo > 0. (One shot per press-release.)
- Effects: ammo--, fire sound, clear B3+B4, spawn bullet at EXACT player pos with player dir.
- Bullet flies until it enters a wall cell; wall cleanup happens in checkobjects (with kill sound).
- **Quirk (faithful): only the NEWEST flying bullet kills** (aura tests the first lista item only).
  The same bullet is NOT consumed by a kill: it can kill several ghosts in one frame.

## 7. Frame order (playlevel frame loop)

1. moveplayer, turn.
2. `count = (ticks + carry) >> 2; carry = (ticks + carry) & 3`.
3. If fire edge + ammo: @shot.
4. checkobjects (once per frame, before motion): bullets-in-wall deleted (kill sound);
   newest-bullet aura vs every ghost (score += 10, respawn, kill sound); ammo pickup
   (ammo += 5, delete, kill sound).
5. eat(): if word-map at player cell == 0x2400: set 0x2000, score++, dots--, eat sound.
6. moveobjects: each obj's move() called `count` times; died = ghost kill results.
   Bullets move WITHOUT checks here (wall death detected next frame).
7. Sound tick x2. Transitions: died → death cinematic; dots==0 → level++ then survived msgbox;
   M → map modal; W → walls on/off msgbox; P/Enter → pause msgbox; ESC → quit to title.
   (DOS renders the world between check-phase and move-phase; equivalent.)

## 8. Death / level flow / lives

- died>0 → death cinematic: spin `dir += ticks*8` (full render each iter) until
  accumulator >= 0x400 (one full turn, ~1.83 s), with death jingle; then stop.
- Deaths counter++: if >= 3 → "game over|" msgbox (quit to title), else "you have been eaten|" msgbox
  (restart level: bullets cleared, ghosts respawned, dots/ammo persist, player to spawn).
- 3 lives total (deaths 1-2 retry, 3rd death = game over). The 3 sidebar PAC icons are STATIC decor.
- Level complete (dots==0): level++ BEFORE the message; "you survived level %d|" msgbox (new level);
  continue: level>=5 → WON (win screen), else fresh level (new dots/ammo/ghosts, score/ammo persist).
- AMMO STARTS AT 0. Ammo pickup: +5 at ghost corners.

## 9. Sound (PC speaker; pitch in Hz = value)

Sound struct {cur, step}. Tick (2x/frame): if cur>0: square-wave at cur Hz; cur -= step; at <=0 off.
- eat: (0x46, 0x3C) = 70 Hz blip. shoot: (0xC8, 0x28) = 200 Hz. kill: (0x12C, 0x46) = 300 Hz.
  death: (0x1F4, 0x19) = 500 Hz long descend (~20 ticks).
- 32X port: slave-SH-2 PWM square-wave chirps with identical (startHz, stepPerTick, 2 ticks/frame).

## 10. Presentation (320x200 indices + 256-color palette)

- 3D view x 0..255; sidebar x 256..319: radar (player 148 + object blips), SCORE + 4 digits
  (thousands at LEFT), lives icons (3 static PAC stamps), AMMO + 4 digits, " pac /  a  / maze| " logo.
- Floor rows 100..196 (RECIP projection, dot decals at uneaten cells; 128 samples/row,
  each sample covering 2 horizontal pixels, frustum-matched to the walls); rows 197..199 black;
  ceiling black; walls textured (level parity selects set; per-cell variant 1..4; distance shade).
- Map overlay (modal): 32x32 cells as 6x6 blocks: wall=0, corridor=48, dot center 2x2=148,
  dir-dependent 5x5 player arrow; 3 rose border rects.
- MSGs: top bar (msg, centered) + bottom bar ("press enter{"); all wait START on 32X.
- Walls flag: toggles textured wall rendering (flat floor + no march when off; zbuf = 0x7530).
- Title: scrollable intro story (max 281px, 2px/frame); START begins game.
  Win: scrollable congratulations (max 93px); START returns to title.

## 11. 32X port mapping

- Tick: 70 Hz rational accumulator driven by 60 Hz vblank (acc += 7*vblanks per rendered frame).
- Input: D-pad = arrows; A = fire (press+release); B = map modal; C = walls toggle;
  START = confirm/pause; START+C chord = quit to title.
  (Test harness note: PicoDrive maps retropad A->MD C and Y->MD A; tests/harness.c swaps a/c.)
- Render: exact DOS raycaster (256 rays, 97 floor rows, billboards) into an 8-bit 320x200
  window centered in the 320x224 8bpp framebuffer; original COLOR.3D palette via CRAM.
  Faithful + SH-2-tuned (pointer stores, texel-run cache, division tables): ~12-16 fps.
- Audio: slave SH-2 PWM square-wave SFX (COMM4 freq word) + COMM6 heartbeat.
- States: TITLE → GAME ⇄ (MAP modal, MSG modal) → DEATH → TITLE; GAME → WIN → TITLE.
- Files: original/* (game data), tools/mkassets.py (build-time conversion), src/core (game+render),
  src/platform/32x (boot/video/pad/audio), tests/ (host asserts + PicoDrive scripts).
