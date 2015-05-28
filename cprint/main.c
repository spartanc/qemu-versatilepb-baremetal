#include "reg.h"

void print(const char * str)
{
       while (*str) {
              while (*UART0_STATUS & TX_FULL);
              *UART0 = *str++;
       }
}

void main(void)
{
       print("hello world\n");
}
