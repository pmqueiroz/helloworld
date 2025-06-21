%define BOOTSEG  0x7C00
%define BOOTSIG  0xAA55

org BOOTSEG
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
dw BOOTSIG
