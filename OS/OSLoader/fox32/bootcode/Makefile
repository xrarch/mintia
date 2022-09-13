all: new

new: AisixFSBoot.bin
	dd if=AisixFSBoot.bin of=$(DISTIMAGE) bs=512 conv=notrunc seek=7 2>/dev/null
	touch new

AisixFSBoot.bin: AisixFSBoot.s
	$(ASM) AisixFSBoot.s AisixFSBoot.bin
	$(LNK) move AisixFSBoot.bin text=0xA00,bss=text+text_size
	$(LNK) binary -nobss AisixFSBoot.bin

cleanup:
	rm -f *.bin