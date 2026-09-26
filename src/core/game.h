/* Pacamaze-32X - portable game core (no platform headers).
 * Faithful port of the DOS logic: 70 Hz tick accumulator, same speeds /
 * AI / level flow (docs/GAME_SPEC.md + RE notes). */
#ifndef PACAMAZE_GAME_H
#define PACAMAZE_GAME_H

#include <stdint.h>

/* World: 32x32 cells of 32 units. bytemap index = (x>>5) + ((y>>5)<<5). */
#define MAP_CELLS 32
#define CELL_UNITS 32
#define WORLD_MAX 1024

/* Input bits (platform layer maps pad -> these). */
#define IN_UP    0x001  /* forward in game; scroll on title/win screens */
#define IN_DOWN  0x002  /* backward in game; scroll on title/win screens */
#define IN_LEFT  0x004
#define IN_RIGHT 0x008
#define IN_FIRE  0x010  /* A button = Space (press+release = one shot) */
#define IN_MAP   0x020  /* B button = M (map modal) */
#define IN_WALLS 0x040  /* C button = W (walls toggle) */
#define IN_START 0x080  /* START = Enter/P (context confirm) */
/* quit to title = START+C chord (IN_START + IN_WALLS held together) */

/* Game states. */
enum {
    ST_TITLE,   /* scrolling intro; START starts game */
    ST_GAME,    /* active play */
    ST_MAP,     /* fullscreen map modal */
    ST_MSG,     /* msgbox modal + press-enter box */
    ST_DEATH,   /* death spin cinematic */
    ST_WIN      /* scrolling congratulations; START returns to title */
};

/* ST_MSG continuations. */
enum {
    MN_GAME,        /* resume play */
    MN_RESTART,     /* restart current level after death */
    MN_NEXTLEVEL,   /* level complete: advance (or win) */
    MN_TITLE        /* back to title */
};

/* PC-speaker chirps: (start Hz, step per sound-tick), 2 ticks/frame. */
#define SFX_EAT_CUR 0x46
#define SFX_EAT_STEP 0x3C
#define SFX_SHOOT_CUR 0xC8
#define SFX_SHOOT_STEP 0x28
#define SFX_KILL_CUR 0x12C
#define SFX_KILL_STEP 0x46
#define SFX_DEATH_CUR 0x1F4
#define SFX_DEATH_STEP 0x19

/* Sample IDs for the 32X slave player. Must match the SFX_* enum in
 * src/gen/sfx.h (SID_EAT == SFX_EAT, ...); duplicated here so the core
 * stays platform-header-free. */
enum {
    SID_NONE = 0,
    SID_EAT,    /* dot eaten */
    SID_AMMO,   /* ammo pickup (DOS played the kill chirp here) */
    SID_SHOOT,  /* player fired */
    SID_KILL,   /* ghost shot / bullet splat on wall */
    SID_DEATH,  /* player death */
    SID_UI,     /* map / walls / pause / msgbox blip (new, no DOS chirp) */
    SID_WIN     /* level clear fanfare (new, no DOS chirp) */
};

/* Title / win scroll limits (pixels; DOS compares byte offsets). */
#define TITLE_SCROLL_MAX 281
#define WIN_SCROLL_MAX 93

#define MAXOBJ 24

typedef struct {
    uint8_t alive;
    char type;          /* 'a' ammo, 'e' enemy, 'b' bullet */
    int32_t x, y;       /* world units */
    int dir;            /* bullet: 0..1023 */
    int dirword;        /* ghost: -32,-1,0,+1,+32 */
    int steps;          /* ghost */
    int etype;          /* ghost type digit 1/2/4 = step units */
    uint32_t seq;       /* creation order (higher = newer) */
} Obj;

typedef struct {
    int state;
    int level;              /* 0..4 */
    int score, ammo, deaths, dots;
    int32_t px, py;         /* player pos (world units) */
    int pdir;               /* player dir 0..1023 */
    uint8_t bytemap[1024];  /* corridor 0, wall 1..4 (texture variant) */
    uint16_t wordmap[1024]; /* wall 0x2800, dot 0x2400, eaten 0x2000 */
    Obj obj[MAXOBJ];
    uint32_t seq;
    int tick_carry;         /* ghost-move fractional carry (count>>2) */
    int32_t tick_acc;       /* 70 Hz accumulator (units of ticks/6) */
    int sfx_cur, sfx_step;  /* chirp state */
    uint16_t sfx_id, sfx_seq; /* sample trigger: id + sequence */
    uint16_t prev_pad;
    int fire_pressed;       /* latched Space-press (B3); release fires */
    char msg[64];           /* ST_MSG text */
    int msg_next;
    int spin_acc;           /* ST_DEATH spin accumulator */
    int scroll;             /* ST_TITLE / ST_WIN scroll position (pixels) */
    int walls_on;           /* W toggle (default 1) */
    uint32_t rng;           /* Borland LCG state */
    uint32_t frame;
} Game;

void Game_Init(Game *g);
/* Advance one rendered frame; vticks = vblanks elapsed (70 Hz accrual). */
void Game_Frame(Game *g, uint16_t pad, int vticks);

/* map index from world coords (column-major memory, transposed load) */
static inline int MapIdx(int32_t x, int32_t y)
{
    int xc = (int)(x >> 5), yc = (int)(y >> 5);
    if (xc < 0) xc = 0; else if (xc > 31) xc = 31;
    if (yc < 0) yc = 0; else if (yc > 31) yc = 31;
    return xc + (yc << 5);
}

#endif
