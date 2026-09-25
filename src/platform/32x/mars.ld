/*
 * HexGL 32X linker script (master/slave SH2 side).
 * ROM at 0x02000000 (cartridge through cache), data/bss in SDRAM.
 */
OUTPUT_ARCH(sh)
ENTRY(_start)
__DYNAMIC = 0;

MEMORY
{
    rom (rx)  : ORIGIN = 0x02000000, LENGTH = 0x00400000
    ram (wxa) : ORIGIN = 0x06000000, LENGTH = 0x0003F000
}

PROVIDE (__stack = 0x0603F000);

SECTIONS
{
    .text 0x02000000 :
    AT ( 0x00000000 )
    {
        __text_start = .;
        KEEP (*crt0.o (.text))
        *(.text)
        *(.text.*)
        *(.gnu.linkonce.t.*)
        . = ALIGN(16);
        *(.rdata)
        *(.rodata)
        *(.rodata.*)
        *(.gnu.linkonce.r.*)
        . = ALIGN(16);
        __text_end = .;
    } > rom
    __text_size = __text_end - __text_start;

    .data 0x06000000 :
    AT ( LOADADDR (.text) + SIZEOF (.text) )
    {
        __data_start = .;
        *(.data)
        *(.data.*)
        *(.gnu.linkonce.d.*)
        *(.sdata)
        *(.sdata.*)
        . = ALIGN(16);
        __data_end = .;
    } > ram
    __data_size = __data_end - __data_start;

    .bss :
    {
        __bss_start = .;
        *(.bss)
        *(.bss.*)
        *(.gnu.linkonce.b.*)
        *(.sbss)
        *(.sbss.*)
        *(.scommon)
        *(COMMON)
        . = ALIGN(16);
        __bss_end = .;
        _end = .;
    } > ram
    __bss_size = __bss_end - __bss_start;

    /DISCARD/ : { *(.comment) *(.debug*) *(.eh_frame) *(.eh_frame_hdr) }
}
