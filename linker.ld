MEMORY
{
    RAM (rwx) : ORIGIN = 0x80000000, LENGTH = 64K
}

SECTIONS
{
    .text : {
        *(.text)
    } > RAM

    .data : {
        *(.data)
    } > RAM

    .bss : {
        *(.bss)
    } > RAM

    .my_mem (NOLOAD) : {
        . = ALIGN(4);
        KEEP(*(.my_mem))
        . = ALIGN(4);
    } > RAM
}
