%define ENDL 0x0D, 0x0A

puts:
  pusha

.loop:
  lodsb
  or     al, al
  jz     .end
  mov    ah, 0x0E
  int    0x10
  jmp    .loop

.end:
  popa
  ret

putsln:
  call   puts
  mov    si, end_of_line
  call   puts
  ret

end_of_line:
  db ENDL
