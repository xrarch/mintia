all: .new

.new: a3xBootDescriptor.bin AisixFSBoot.bin
	dd if=a3xBootDescriptor.bin of=$(DISTIMAGE) bs=512 conv=notrunc seek=5 2>/dev/null
	dd if=AisixFSBoot.bin of=$(DISTIMAGE) bs=512 conv=notrunc seek=7 2>/dev/null
	touch .new

a3xBootDescriptor.bin: a3xBootDescriptor.s
	$(ASM) format=flat a3xBootDescriptor.s a3xBootDescriptor.bin

AisixFSBoot.bin: AisixFSBoot.s
	$(ASM) AisixFSBoot.s AisixFSBoot.bin
	$(LNK) move AisixFSBoot.bin text=0x20000,bss=text+text_size
	$(LNK) binary -nobss AisixFSBoot.bin

cleanup:
	rm -f *.bin