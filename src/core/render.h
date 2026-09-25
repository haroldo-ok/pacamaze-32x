/* Pacamaze-32X - software renderer (index framebuffer 320x200).
 * Faithful port of the DOS raycaster + sprites + sidebar + modals. */
#ifndef PACAMAZE_RENDER_H
#define PACAMAZE_RENDER_H

#include "game.h"

#define R_W 320
#define R_H 200

void Render(const Game *g, uint8_t *fb);

#endif
