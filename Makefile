# Pacamaze-32X build (Chilly Willy 32XDK 20220418, GCC 12.1)
#
#   make            build rom/pacamaze.32x
#   make check      build + static verify + PicoDrive point-to-point tests
#   make clean
#
# Boot/link recipe follows the MIT hexgl-32x foundation (direct sh-ld, no
# libc, no LTO, no --gc-sections): docs/SOURCE_PROVENANCE.md
GENDEV  ?= /opt/toolchains/sega
TARGET  ?= pacamaze
TITLE   ?= PACAMAZE 3D MAZE SHOOTER PORT
BUILD   := obj
ROM     := rom/$(TARGET).32x
ELF     := $(BUILD)/$(TARGET).elf

SHPREFIX := $(GENDEV)/sh-elf/bin/sh-elf-
MDPREFIX := $(GENDEV)/m68k-elf/bin/m68k-elf-
SHCC   := $(SHPREFIX)gcc
SHAS   := $(SHPREFIX)as
SHLD   := $(SHPREFIX)ld
SHOC   := $(SHPREFIX)objcopy
SHSIZE := $(SHPREFIX)size
MDAS   := $(MDPREFIX)as
MDLD   := $(MDPREFIX)ld
MDOC   := $(MDPREFIX)objcopy
HOSTCC ?= cc

P32X := src/platform/32x

SHCFLAGS := -m2 -mb -O2 -fomit-frame-pointer \
            -fno-asynchronous-unwind-tables -fno-unwind-tables \
            -fno-builtin -nostdlib -std=c11 -Wall -Wextra \
            -Isrc/core -I$(P32X)
SHLIBGCC := $(shell $(SHCC) -m2 -mb -print-libgcc-file-name)

# Game sources (EDIT as milestones land)
CORE_C  := $(wildcard src/core/*.c)
GEN_C   := src/gen/assets.c src/gen/sfx.c
PLAT_C  := $(P32X)/main_32x.c $(P32X)/hw_32x.c $(P32X)/slave_32x.c
COBJ    := $(patsubst %.c,$(BUILD)/%.o,$(CORE_C) $(GEN_C) $(PLAT_C))

MARKERS := --title "PACAMAZE" --min-text 2048

.PHONY: all check clean setup

all: $(ROM)

setup:
	./setup.sh

$(BUILD) rom:
	mkdir -p $@ $(BUILD)/src/core $(BUILD)/src/platform/32x

# ---- 68000 side -------------------------------------------------------
$(BUILD)/m68k.o: $(P32X)/md_src/m68k.s | $(BUILD)
	$(MDAS) -m68000 --register-prefix-optional -o $@ $<
$(BUILD)/m68k.bin: $(BUILD)/m68k.o
	$(MDLD) -T $(P32X)/md_src/m68k.ld -o $(BUILD)/m68k.elf $<
	$(MDOC) -O binary $(BUILD)/m68k.elf $@

# ---- SH-2 startup (embeds m68k.bin) ------------------------------------
$(BUILD)/crt0.o: $(P32X)/crt0.s $(P32X)/sega_startup.inc $(BUILD)/m68k.bin | $(BUILD)
	cp $(P32X)/sega_startup.inc $(BUILD)/
	$(SHAS) --small -I $(P32X) -I $(BUILD) -o $@ $<

# ---- C objects ----------------------------------------------------------
$(BUILD)/%.o: %.c | $(BUILD)
	mkdir -p $(dir $@)
	$(SHCC) $(SHCFLAGS) -c $< -o $@

# ---- link / image / header fix -------------------------------------------
$(ELF): $(BUILD)/crt0.o $(COBJ) $(P32X)/mars.ld
	$(SHLD) -T $(P32X)/mars.ld -o $@ $(BUILD)/crt0.o $(COBJ) $(SHLIBGCC)
	$(SHSIZE) $@
	@echo "--- bss/stack ---"
	@$(SHCC) -m2 -mb -Wl,--print-map -T $(P32X)/mars.ld -nostdlib -o /dev/null $(BUILD)/crt0.o $(COBJ) $(SHLIBGCC) 2>/dev/null | grep -E '__bss_end|__stack' || true

$(ROM): $(ELF) | rom
	$(SHOC) -O binary $< $(BUILD)/$(TARGET).raw
	dd if=$(BUILD)/$(TARGET).raw of=$@ bs=8192 conv=sync status=none
	python3 tools/romfix.py $@ --title "$(TITLE)"

check: $(ROM)
	make -C tests harness
	make -C tests host
	python3 tests/verify_rom.py $(ROM) $(ELF) $(MARKERS)
	python3 tests/run_tests.py

clean:
	rm -rf $(BUILD) rom tests/harness tests/out
