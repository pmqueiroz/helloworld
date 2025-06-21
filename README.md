```nasm
mov si, message
.loop:
  lodsb
  or     al, al
  jz     .end
  mov    ah, 0x0E
  int    0x10
  jmp    .loop

message db "helloworld.", 0
```

I always thought that `helloworlding` as the first thing to do in a new language is the stupidest thing to do. Here's my version of hello world that actually gives me real knowledge. That's a boot level program to print my hello.

### Get started

#### Requirements

* Assembler: `nasm`
* Emulator: `qemu-system-x86_64`

#### Running

```shell
make run
```
