all: .new

.new: AisixFSBoot.bin FoxJump.bin
	dd if=AisixFSBoot.bin of=$(DISTIMAGE) bs=512 conv=notrunc seek=7 2>/dev/null
	$(APTOOL) wb FoxJump.bin
	touch .new

AisixFSBoot.bin: AisixFSBoot.s
	$(ASM) AisixFSBoot.s AisixFSBoot.bin
	$(LNK) move AisixFSBoot.bin text=0xA00,bss=text+text_size
	$(LNK) binary -nobss AisixFSBoot.bin

FoxJump.bin: FoxJump.s
	$(ASM) FoxJump.s FoxJump.bin
	$(LNK) move FoxJump.bin text=0x800
	$(LNK) binary -nobss FoxJump.bin

cleanup:
	rm -f *.bin