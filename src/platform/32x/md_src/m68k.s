|-----------------------------------------------------------------------
| HexGL 32X - 68000 main program
|
| Linked at 0x880800 (ROM bank 0 as seen by the 68000 when the adapter
| is active). Entered by the standard 32X startup block with the
| hardware initialised. Duties:
|   - set up the MD VDP (display on, backdrop black, H40)
|   - hand the 32X VDP to the SH2s (FM=1)
|   - every frame: read pad 1 and publish it in COMM8 for the master SH2
|-----------------------------------------------------------------------

        .text

        .equ    MARS_SYS_INTMSK, 0xA15100      /* adapter control (FM bit in high byte) */
        .equ    MARS_COMM8,      0xA15128      /* pad state -> SH2 */
        .equ    MARS_COMM10,     0xA1512A      /* 68k heartbeat */
        .equ    VDP_DATA,        0xC00000
        .equ    VDP_CTRL,        0xC00004
        .equ    PAD1_DATA,       0xA10003
        .equ    PAD1_CTRL,       0xA10009

|-----------------------------------------------------------------------
| entry (hot start jump table target 0x880800)
|-----------------------------------------------------------------------

        .org    0

entry:
        bra.w   main

|-----------------------------------------------------------------------
| exception / interrupt stubs (fixed jump table targets)
|-----------------------------------------------------------------------

        .org    0x40                    | 0x880840: generic exception
exc:
        rte

        .org    0x80                    | 0x880880: HBlank
hbl:
        rte

        .org    0xC0                    | 0x8808C0: VBlank
vbl:
        rte

        .org    0x100                   | 0x880900: EXT (32X) level 2
extint:
        rte

|-----------------------------------------------------------------------
| main program
|-----------------------------------------------------------------------

        .org    0x110

main:
        move    #0x2700, sr
        lea     0x00FFE000, sp

        | MD VDP: mode 5, display enabled, H40, backdrop colour 0
        lea     VDP_CTRL, a0
        move.w  #0x8004, (a0)           | reg 0
        move.w  #0x8144, (a0)           | reg 1: display on, mode 5
        move.w  #0x8700, (a0)           | reg 7: backdrop = pal 0 colour 0
        move.w  #0x8C81, (a0)           | reg 12: H40
        move.w  #0x8F02, (a0)           | reg 15: auto-increment 2

        | backdrop colour 0 = black
        move.l  #0xC0000000, (a0)       | CRAM write, address 0
        move.w  #0x0000, VDP_DATA

        | pad 1: TH output
        move.b  #0x40, PAD1_CTRL
        move.b  #0x40, PAD1_DATA

        | give the 32X VDP to the SH2s (byte write: FM bit only!)
        move.b  #0x80, MARS_SYS_INTMSK

        moveq   #0, d7                  | heartbeat counter

|-----------------------------------------------------------------------
| main loop: wait for vblank edge, read pad, publish to COMM8
|-----------------------------------------------------------------------

loop:
        | wait until out of vblank
0:      move.w  VDP_CTRL, d0
        btst    #3, d0
        bne.b   0b
        | wait for vblank start
1:      move.w  VDP_CTRL, d0
        btst    #3, d0
        beq.b   1b

        bsr.b   read_pad
        move.w  d0, MARS_COMM8

        addq.w  #1, d7
        move.w  d7, MARS_COMM10

        bra.b   loop

|-----------------------------------------------------------------------
| read 3-button pad 1 -> d0 = 0 0 0 0 0 0 0 0 S A C B R L D U (1=pressed)
|-----------------------------------------------------------------------

read_pad:
        lea     PAD1_DATA, a1
        move.b  #0x40, (a1)             | TH = 1
        nop
        nop
        move.b  (a1), d1                | x x C B R L D U
        move.b  #0x00, (a1)             | TH = 0
        nop
        nop
        move.b  (a1), d2                | x x S A 0 0 D U
        move.b  #0x40, (a1)             | leave TH = 1

        moveq   #0, d0
        move.b  d1, d0
        andi.w  #0x003F, d0             | C B R L D U
        andi.w  #0x0030, d2             | S A . . . .
        lsl.w   #2, d2                  | -> bits 7:6
        or.w    d2, d0
        eori.w  #0x00FF, d0             | active low -> active high
        rts
