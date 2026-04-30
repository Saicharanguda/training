#include <stdio.h>

int my_buffer[256] __attribute__((section(".my_mem")));

int main() {
    my_buffer[0] = 100;
    printf("%d\n", my_buffer[0]);
    return 0;
}
