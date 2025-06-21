ASM=nasm
ASMFLAGS=-f bin
EMU=qemu-system-x86_64
OUT=out
IMG=$(OUT)/boot.img
SRC=boot/boot.asm

all: $(IMG)

$(IMG): $(SRC)
	@mkdir -p $(OUT)
	$(ASM) $(ASMFLAGS) $(SRC) -o $(IMG)

run: $(IMG)
	$(EMU) -drive format=raw,file=$(IMG)

clean:
	rm -rf $(OUT)
