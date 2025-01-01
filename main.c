#include "pico/stdlib.h"

int main() {
    gpio_set_function(0, UART_FUNCSEL_NUM(uart0, 0));
    gpio_set_function(1, UART_FUNCSEL_NUM(uart0, 1));

    uart_init(uart0, 115200);

    while (true) {
        uart_puts(uart0, "Hello, World!");
        sleep_ms(1000);
    }
}