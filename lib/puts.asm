%define PURPLE_ON_BLACK 0xF0

; print string in register SI
puts:
  xor    dh, dh    ; row = 0
  xor    dl, dl    ; col = 0
  mov    bh, 0x00  ; page 0

.loop_char:
  lodsb
  cmp    al, 0
  je     .end

.print_char:
  mov    ah, 0x09
  mov    bl, PURPLE_ON_BLACK
  mov    cx, 1
  int    0x10

.advance_cursor:
  mov    ah, 0x03
  int    0x10
  inc    dl
  mov    ah, 0x02
  int    0x10

  jmp    .loop_char

.end:
  ret

; print string in register SI and add new line
putsln:
  call   puts
  call   eol
  ret

eol:
  mov ah, 0x03
  int 0x10
  xor dl, dl
  inc dh
  mov ah, 0x02
  int 0x10
  ret
