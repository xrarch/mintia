AS      = ../../../../sdk/asm.sh

all: a3xBootDescriptor.bin AisixFSBoot.bin

a3xBootDescriptor.bin: a3xBootDescriptor.s
	$(AS) format=flat a3xBootDescriptor.s a3xBootDescriptor.bin

AisixFSBoot.bin: AisixFSBoot.s
	$(AS) format=flat AisixFSBoot.s AisixFSBoot.bin

cleanup:
	rm -f ${OBJ} *.bin