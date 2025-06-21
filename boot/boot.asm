%define BOOTSEG  0x7C00
%define BOOTSIG  0xAA55

org BOOTSEG
bits 16

start:
  xor   ax, ax
  mov   ds, ax

clr_screen:
  mov   ax, 0x0003
  int   0x10

card:
  mov   si, header
  call  putsln
  mov   si, helloword
  call  putsln
  mov   si, blank
  call  putsln
  mov   si, website
  call  putsln
  mov   si, footer
  call  putsln

halt:
  jmp   halt

%include "strings/card.asm"
%include "lib/puts.asm"

times 510 - ($ - $$) db 0
dw BOOTSIG
