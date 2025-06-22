%define BOOTSEG  0x7C00
%define BOOTSIG  0xAA55

org BOOTSEG
bits 16

start:
  mov   ax, 0x0003
  int   0x10

main:
  xor   ax, ax
  mov   ds, ax

.card:
  call  print_card

  hlt

.halt:
  jmp   .halt

%include "lib/print_card.asm"
%include "lib/puts.asm"

times 510 - ($ - $$) db 0
dw BOOTSIG
