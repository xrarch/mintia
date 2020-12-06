DISTIMAGE  := ./dist/dist.img
DISTIMGSZ  := 2048
FST        := ../sdk/fstool.sh
OBJTOOL    := ../sdk/link.sh

DISKLABEL  := ./dist/preset.disklabel
OFFSET     := 2

OS_DIR     := ./OS
LOAD_DIR   := $(OS_DIR)/Loader
KERN_DIR   := $(OS_DIR)/Kernel
LIB_DIR    := $(OS_DIR)/Library

FSTOOL     := $(FST) $(DISTIMAGE) offset=$(OFFSET)

dist: $(DISTIMAGE) bootable sysfiles kernel

bootable:
	make -C $(LOAD_DIR)
	dd if=$(LOAD_DIR)/BootSector.bin of=$(DISTIMAGE) bs=4096 conv=notrunc seek=$$((1 + $(OFFSET))) 2>/dev/null
	dd if=$(LOAD_DIR)/Loader.a3x of=$(DISTIMAGE) bs=4096 conv=notrunc seek=$$((2 + $(OFFSET))) 2>/dev/null

kernel:
	make -C $(KERN_DIR)
	$(FSTOOL) w /Andromeda/AndromedaKernel.exe $(KERN_DIR)/AndromedaKernel.exe

sysfiles: $(LIB_DIR)/Dragonfruit.dll
	$(FSTOOL) w /Andromeda/Dragonfruit.dll $(LIB_DIR)/Dragonfruit.dll

$(LIB_DIR)/Dragonfruit.dll: ../sdk/lib/dfrt/dfrt.f.o
	cp ../sdk/lib/dfrt/dfrt.f.o $(LIB_DIR)/Dragonfruit.dll
	$(OBJTOOL) move $(LIB_DIR)/Dragonfruit.dll text=0x180000,data=text+text_size+align,bss=data+data_size+align

$(DISTIMAGE):
	dd if=/dev/zero of=$(DISTIMAGE) bs=4096 count=$(DISTIMGSZ) 2>/dev/null
	dd if=$(DISKLABEL) of=$(DISTIMAGE) bs=4096 count=1 seek=0 conv=notrunc
	$(FSTOOL) f

cleanup:
	make -C $(OS_DIR) cleanup
	rm -f $(DISTIMAGE)
	rm -f lib/*