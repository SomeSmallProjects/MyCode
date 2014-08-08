#include <stdio.h>

unsigned long int get_esp_address(void) {
  __asm__("movl %esp, %eax");
}

int main(void) {
  unsigned long int esp_addr = get_esp_address();
  printf("%%esp stack pointer address: 0x%x\n", esp_addr);
  return 0;
}
