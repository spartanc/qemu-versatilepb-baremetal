# versatile UART0 is at 0x101f1000
# reference https://balau82.wordpress.com/2010/02/28/hello-world-for-bare-metal-arm-using-qemu/
#.equ UART0_REG, 0x101f1000


.equ UART0_REG, 0x101f1000
# qemu RAM ends at 0x7FFFFFFF, stack grow downwards toward lower memory address.
.equ STACK_TOP, 0x7FFFFFFF

.global bm_start

bm_start:
    ldr r0, =STACK_TOP
    bl  main

# we should never reach here.
.L1:
    b   .L1

