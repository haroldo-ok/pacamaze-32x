/* HexGL 32X - 68000 program layout.
 * Text runs from ROM bank address 0x880800 as seen by the 68000. */
OUTPUT_ARCH(m68k)
SECTIONS
{
    .text 0x880800 :
    {
        *(.text)
        *(.rodata*)
        . = ALIGN(2);
    }
    /DISCARD/ : { *(.comment) *(.debug*) *(.data) *(.bss) }
}
