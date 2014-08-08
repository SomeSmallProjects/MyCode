.code32
.text

.global _start

_start:
  movl $4, %eax # sys_call (write)
  movl $1, %ebx # stdout
  movl $msg, %ecx #pointer to char*
  movl len, %edx # bytes to write
  int $0x80

  movl $1, %eax
  movl $0, %ebx
  int $0x80 

.section .data
msg:
  .ascii "Hello world !\n"
len:
  .long . - msg
