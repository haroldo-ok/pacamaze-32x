!-----------------------------------------------------------------------
! Pacamaze 32X - ROM header and SH2 startup code
! Adapted from the MIT hexgl-32x foundation (see docs/SOURCE_PROVENANCE.md)
!
! Original code for this project. Follows the ROM layout mandated by the
! SEGA 32X hardware:
!   0x000  initial 68000 vector table (console boots in MegaDrive mode)
!   0x100  standard MegaDrive cartridge header
!   0x200  Mars 68000 exception jump table
!   0x3C0  Mars (32X) module header
!   0x3F0  standard SEGA 32X startup/security block (mandatory boot data,
!          identical in every 32X cartridge - included from
!          sega_startup.inc)
!   0x800  68000 main program (src-md/m68k.s, linked at 0x880800)
!   ....   SH2 code (this file's entry points + the C game)
!-----------------------------------------------------------------------

        .text
        .global _start
_start:

!-----------------------------------------------------------------------
! Initial 68000 vectors: vector 0 is the initial stack pointer, all the
! others point at the 32X startup block at 0x3F0.
!-----------------------------------------------------------------------

        .long   0x01000000,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0
        .long   0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0
        .long   0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0
        .long   0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0
        .long   0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0
        .long   0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0
        .long   0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0
        .long   0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0,0x000003F0

!-----------------------------------------------------------------------
! MegaDrive cartridge header at 0x100
!-----------------------------------------------------------------------

        .ascii  "SEGA 32X        "                      /* console */
        .ascii  "(C)PMZ 2026.SEP "                      /* copyright */
        .ascii  "PACAMAZE 3D MAZE SHOOTER 32X    "      /* domestic name (48) */
        .ascii  "                "
        .ascii  "PACAMAZE 3D MAZE SHOOTER 32X    "      /* overseas name (48) */
        .ascii  "                "
        .ascii  "GM PACAMAZE-00"                        /* serial */
        .word   0x0000                                  /* checksum (0 = skip) */
        .ascii  "J6              "                      /* I/O support */
        .long   0x00000000,0x0007FFFF                   /* ROM start, end */
        .long   0x00FF0000,0x00FFFFFF                   /* RAM start, end */
        .ascii  "            "                          /* no SRAM (12) */
        .ascii  "    "                                  /* notes (52) */
        .ascii  "                "
        .ascii  "                "
        .ascii  "                "
        .ascii  "F               "                      /* region: all */

!-----------------------------------------------------------------------
! Mars 68000 exception jump table at 0x200. Once the adapter is enabled
! its internal vector table routes 68000 exceptions here.
!-----------------------------------------------------------------------

        .macro  jump address
        .word   0x4EF9,\address>>16,\address&0xFFFF
        .endm

        .macro  call address
        .word   0x4EB9,\address>>16,\address&0xFFFF
        .endm

        jump    0x880800    /* reset = hot start -> 68k main */
        call    0x880840    /* BusError */
        call    0x880840    /* AddrError */
        call    0x880840    /* IllInstr */
        call    0x880840    /* DivByZero */
        call    0x880840    /* CHK */
        call    0x880840    /* TrapV */
        call    0x880840    /* Privilege */
        call    0x880840    /* Trace */
        call    0x880840    /* LineA */
        call    0x880840    /* LineF */
        .space  72          /* reserved */
        call    0x880840    /* Spurious */
        call    0x880840    /* Level1 */
        jump    0x880900    /* Level2 EXT */
        call    0x880840    /* Level3 */
        jump    0x880880    /* Level4 HBlank */
        call    0x880840    /* Level5 */
        jump    0x8808C0    /* Level6 VBlank */
        call    0x880840    /* Level7 */
        call    0x880840    /* Trap0 */
        call    0x880840    /* Trap1 */
        call    0x880840    /* Trap2 */
        call    0x880840    /* Trap3 */
        call    0x880840    /* Trap4 */
        call    0x880840    /* Trap5 */
        call    0x880840    /* Trap6 */
        call    0x880840    /* Trap7 */
        call    0x880840    /* Trap8 */
        call    0x880840    /* Trap9 */
        call    0x880840    /* TrapA */
        call    0x880840    /* TrapB */
        call    0x880840    /* TrapC */
        call    0x880840    /* TrapD */
        call    0x880840    /* TrapE */
        call    0x880840    /* TrapF */
        .space  166         /* reserved */

!-----------------------------------------------------------------------
! Mars module header at 0x3C0
!-----------------------------------------------------------------------

        .ascii  "PACAMAZE 32X    "              /* module name (16) */
        .long   0x00000000                      /* version */
        .long   __text_end-0x02000000           /* source of initial data (ROM offset) */
        .long   0x00000000                      /* destination (SDRAM offset) */
        .long   __data_size                     /* size of initial data */
        .long   _pri_start                      /* master SH2 entry */
        .long   _sec_start                      /* slave SH2 entry */
        .long   _pri_vbr                        /* master SH2 VBR */
        .long   _sec_vbr                        /* slave SH2 VBR */

!-----------------------------------------------------------------------
! Standard SEGA 32X startup/security block at 0x3F0 (0x410 bytes).
! Mandatory boot data required on every 32X cartridge.
!-----------------------------------------------------------------------

        .include "sega_startup.inc"

!-----------------------------------------------------------------------
! 68000 main program at 0x800 (runs at 0x880800 in 68k address space)
!-----------------------------------------------------------------------

        .incbin "m68k.bin"

        .align  4

!-----------------------------------------------------------------------
! Master SH2 entry
!-----------------------------------------------------------------------

        .align  4
        .global _pri_start
_pri_start:
        mov.l   l_pri_stack, r15

        ! clear .bss
        mov.l   l_bss_start, r1
        mov.l   l_bss_end, r2
        mov     #0, r0
0:
        cmp/hs  r2, r1          ! T = r1 >= r2
        bt      1f
        mov.l   r0, @r1
        bra     0b
        add     #4, r1
1:
        ! purge and enable the cache (write-through)
        mov.l   l_ccr, r1
        mov     #0x11, r0
        mov.b   r0, @r1

        ! enter the game
        mov.l   l_main, r0
        jsr     @r0
        nop
2:
        bra     2b
        nop

        .align  4
l_pri_stack:    .long   0x0603F000
l_bss_start:    .long   __bss_start
l_bss_end:      .long   __bss_end
l_ccr:          .long   0xFFFFFE92
l_main:         .long   _main

!-----------------------------------------------------------------------
! Slave SH2 entry - runs the PWM sound synthesizer (sound.c)
!-----------------------------------------------------------------------

        .align  4
        .global _sec_start
_sec_start:
        mov.l   l_sec_stack, r15

        ! purge and enable the cache (write-through)
        mov.l   l_sec_ccr, r1
        mov     #0x11, r0
        mov.b   r0, @r1

        ! enter the synth (never returns; uses only stack locals)
        mov.l   l_slave, r0
        jsr     @r0
        nop
3:
        bra     3b
        nop

        .align  4
l_sec_stack:    .long   0x06040000
l_sec_ccr:      .long   0xFFFFFE92
l_slave:        .long   _slave_main

!-----------------------------------------------------------------------
! SH2 exception handlers / vector tables
!-----------------------------------------------------------------------

        .align  4
_pri_err:
        bra     _pri_err
        nop
        .align  4
_sec_err:
        bra     _sec_err
        nop

        .align  4
        .global _pri_vbr
_pri_vbr:
        .long   _pri_start              /* cold PC */
        .long   0x0603F000              /* cold SP */
        .long   _pri_start              /* manual reset PC */
        .long   0x0603F000              /* manual reset SP */
        .rept   60
        .long   _pri_err
        .endr

        .align  4
        .global _sec_vbr
_sec_vbr:
        .long   _sec_start
        .long   0x06040000
        .long   _sec_start
        .long   0x06040000
        .rept   60
        .long   _sec_err
        .endr
