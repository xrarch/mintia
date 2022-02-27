AS      = ../../../../sdk/asm.sh
OBJTOOL = ../../../../sdk/link.sh

all: a3xBootDescriptor.bin AisixFSBoot.bin

a3xBootDescriptor.bin: a3xBootDescriptor.s
	$(AS) format=flat a3xBootDescriptor.s a3xBootDescriptor.bin

AisixFSBoot.bin: AisixFSBoot.s
	$(AS) AisixFSBoot.s AisixFSBoot.bin
	$(OBJTOOL) move AisixFSBoot.bin text=0x40000,data=text+text_size,bss=data+data_size
	$(OBJTOOL) binary -nobss AisixFSBoot.bin

cleanup:
	rm -f *.bin