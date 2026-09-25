# Build the headless libretro test harness.
#   make            -> ./harness
# Then place the PicoDrive core at emu/picodrive_libretro.so (see
# references/testing.md) and run: python3 run_tests.py
CC ?= cc
CFLAGS ?= -O2 -std=c11 -Wall -Wextra
harness: harness.c
	$(CC) $(CFLAGS) -o $@ harness.c -ldl
host_render: host_render.c ../src/core/game.c ../src/core/render.c ../src/gen/assets.c
	$(CC) $(CFLAGS) -I../src/core -o $@ host_render.c \
		../src/core/game.c ../src/core/render.c ../src/gen/assets.c
host: host_render
	mkdir -p out
	cd .. && tests/host_render
clean:
	rm -f harness host_render
	rm -rf out
.PHONY: clean host
