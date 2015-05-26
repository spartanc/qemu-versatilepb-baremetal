/* linker script for baremetal program running on qemu versatilepb board. 
 * versatilepb run address start at 0x100000
 */

ENTRY(bm_start)

SECTIONS
{
    __run_addr = 0x100000;

    . = __run_addr;
    .text :
    {
        *(.text)
    }
}
