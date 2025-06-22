; print hello world card
print_card:
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
  
  ret

%include "strings/card.asm"
