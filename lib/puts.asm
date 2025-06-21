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
