# Makefile for baremetal hello world for versatilepb qemu emulator
#

X_COMPILE = arm-none-eabi

image.bin: start.o main.o
	$(X_COMPILE)-ld -T linker.ld main.o start.o -o image.elf
	$(X_COMPILE)-objcopy image.elf -O binary image.bin

main.o: main.c
	$(X_COMPILE)-gcc -O2 -c main.c

start.o: start.S
	$(X_COMPILE)-as start.S -o start.o

clean:
	rm -f *.o *.elf *.bin
