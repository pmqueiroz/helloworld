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
  call puts

  mov    al, 0x0D
  mov    ah, 0x0E
  int    0x10

  mov    al, 0x0A
  mov    ah, 0x0E
  int    0x10

  ret
