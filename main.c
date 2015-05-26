void main(volatile unsigned int *addr, const unsigned char *ptr)
{
    while (*ptr) {
        *addr = *ptr++;
    }
}
