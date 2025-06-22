ASM         = nasm
ASMFLAGS    = -f bin
EMU         = qemu-system-x86_64
OUT         = out
IMG         = $(OUT)/boot.img
SRC         = boot/boot.asm
DUMPER      = xxd
DUMPERFLAGS = -d -u -R always

all: $(IMG)

$(IMG): $(SRC)
	@mkdir -p $(OUT)
	$(ASM) $(ASMFLAGS) $(SRC) -o $(IMG)

run: clean $(IMG)
	$(EMU) -drive format=raw,file=$(IMG)

inspect: clean $(IMG)
	@$(DUMPER) $(DUMPERFLAGS) $(IMG)

clean:
	rm -rf $(OUT)
