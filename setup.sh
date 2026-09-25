#!/bin/bash
# Pacamaze-32X one-shot / idempotent environment bootstrap.
# The toolchain lives OUTSIDE the snapshotted workspace (fast to reinstall),
# so run this after any cold start where `make` complains about a missing gcc.
set -e
GENDEV=${GENDEV:-/opt/toolchains/sega}
ROOT=$(cd "$(dirname "$0")" && pwd)

echo "==> setup.sh (GENDEV=$GENDEV)"

# zstd (needed to unpack the toolchain tarball)
if ! command -v zstd >/dev/null 2>&1; then
    echo "installing zstd..."
    sudo apt-get update -qq && sudo apt-get install -y -qq zstd
fi

# Chilly Willy 32XDK 20220418 (sh-elf-gcc + m68k-elf-gcc 12.1)
if [ ! -x "$GENDEV/sh-elf/bin/sh-elf-gcc" ]; then
    echo "installing 32XDK toolchain..."
    curl -L --fail --retry 3 \
        -o /tmp/32xdk.tar.zst \
        https://github.com/viciious/32XDK/releases/download/20220418/chillys-sega-devkit-20220418-opt.tar.zst
    sudo mkdir -p "$GENDEV"
    sudo tar --zstd -xf /tmp/32xdk.tar.zst -C "$GENDEV" --strip-components=3
    rm -f /tmp/32xdk.tar.zst
fi
"$GENDEV/sh-elf/bin/sh-elf-gcc" --version | head -1
"$GENDEV/m68k-elf/bin/m68k-elf-gcc" --version | head -1

# PicoDrive libretro core (headless test emulator)
if [ ! -f "$ROOT/tests/emu/picodrive_libretro.so" ]; then
    echo "building PicoDrive (takes a few minutes)..."
    rm -rf /tmp/picodrive-src
    git clone --depth 1 --recurse-submodules \
        https://github.com/libretro/picodrive.git /tmp/picodrive-src
    make -C /tmp/picodrive-src -f Makefile.libretro platform=unix -j"$(nproc)"
    mkdir -p "$ROOT/tests/emu"
    cp /tmp/picodrive-src/picodrive_libretro.so "$ROOT/tests/emu/"
    rm -rf /tmp/picodrive-src
fi
ls -la "$ROOT/tests/emu/picodrive_libretro.so"

# Test harness binary
make -C "$ROOT/tests" harness

echo "setup OK"
