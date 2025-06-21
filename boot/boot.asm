org 0x7C00
bits 16

start:
  xor   ax, ax
  mov   ds, ax

  mov   si, message
  call  puts

halt:
  jmp   halt

message db "hello world", 0

%include "lib/puts.asm"

times 510 - ($ - $$) db 0
dw 0xAA55
