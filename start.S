# versatile UART0 is at 0x101f1000
# reference https://balau82.wordpress.com/2010/02/28/hello-world-for-bare-metal-arm-using-qemu/
#.equ UART0_REG, 0x101f1000
.equ UART0_REG, 0x101f1000

.global bm_start

bm_start:
    ldr r0, =UART0_REG 
    adr r1, .L0
    bl  main
.L1:
    b   .L1

.L0:
    .ascii "hello world\0"

