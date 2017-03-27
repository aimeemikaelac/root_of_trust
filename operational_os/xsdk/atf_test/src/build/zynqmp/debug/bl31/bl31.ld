OUTPUT_FORMAT("elf64-littleaarch64")
OUTPUT_ARCH(aarch64)
ENTRY(bl31_entrypoint)
MEMORY {
    RAM (rwx): ORIGIN = (0XFFFEA000), LENGTH = (0XFFFEA000 + 0X16000 - 1) - (0XFFFEA000)
}
SECTIONS
{
    . = (0XFFFEA000);
    ASSERT(. == ALIGN(4096),
           "BL31_BASE address is not aligned on a page boundary.")
    .text . : {
        __TEXT_START__ = .;
        *bl31_entrypoint.o(.text*)
        *(.text*)
        *(.vectors)
        . = NEXT(4096);
        __TEXT_END__ = .;
    } >RAM
    .rodata . : {
        __RODATA_START__ = .;
        *(.rodata*)
        . = ALIGN(8);
        __RT_SVC_DESCS_START__ = .;
        KEEP(*(rt_svc_descs))
        __RT_SVC_DESCS_END__ = .;
        . = ALIGN(8);
        __CPU_OPS_START__ = .;
        KEEP(*(cpu_ops))
        __CPU_OPS_END__ = .;
        . = NEXT(4096);
        __RODATA_END__ = .;
    } >RAM
    ASSERT(__CPU_OPS_END__ > __CPU_OPS_START__,
           "cpu_ops not defined for this platform.")
    __RW_START__ = . ;
    .data . : {
        __DATA_START__ = .;
        *(.data*)
        __DATA_END__ = .;
    } >RAM
    stacks (NOLOAD) : {
        __STACKS_START__ = .;
        *(tzfw_normal_stacks)
        __STACKS_END__ = .;
    } >RAM
    .bss (NOLOAD) : ALIGN(16) {
        __BSS_START__ = .;
        *(.bss*)
        *(COMMON)
        __BSS_END__ = .;
    } >RAM
    xlat_table (NOLOAD) : {
        *(xlat_table)
    } >RAM
    coherent_ram (NOLOAD) : ALIGN(4096) {
        __COHERENT_RAM_START__ = .;
        *(bakery_lock)
        *(tzfw_coherent_mem)
        __COHERENT_RAM_END_UNALIGNED__ = .;
        . = NEXT(4096);
        __COHERENT_RAM_END__ = .;
    } >RAM
    __RW_END__ = .;
    __BL31_END__ = .;
    __BSS_SIZE__ = SIZEOF(.bss);
    __COHERENT_RAM_UNALIGNED_SIZE__ =
        __COHERENT_RAM_END_UNALIGNED__ - __COHERENT_RAM_START__;
    ASSERT(. <= (0XFFFEA000 + 0X16000 - 1), "BL31 image has exceeded its limit.")
}
