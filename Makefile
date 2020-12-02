DISTIMAGE  := ./dist/dist.img
DISTIMGSZ  := 2048
FST        := ../sdk/fstool.sh

DISKLABEL  := ./dist/preset.disklabel
OFFSET     := 2

OS_DIR     := ./OS
LOAD_DIR   := $(OS_DIR)/Loader

FSTOOL     := $(FST) $(DISTIMAGE) offset=$(OFFSET)

dist: $(DISTIMAGE) bootable

bootable:
	make --directory=$(LOAD_DIR)
	dd if=$(LOAD_DIR)/BootSector.bin of=$(DISTIMAGE) bs=4096 conv=notrunc seek=$$((1 + $(OFFSET))) 2>/dev/null
	dd if=$(LOAD_DIR)/Loader.a3x of=$(DISTIMAGE) bs=4096 conv=notrunc seek=$$((2 + $(OFFSET))) 2>/dev/null

$(DISTIMAGE):
	dd if=/dev/zero of=$(DISTIMAGE) bs=4096 count=$(DISTIMGSZ) 2>/dev/null
	dd if=$(DISKLABEL) of=$(DISTIMAGE) bs=4096 count=1 seek=0 conv=notrunc
	$(FSTOOL) f