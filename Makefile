DISTIMAGE  := ./build/mintia-dist.img
DISTIMGSZ  := 2048
FST        := ../sdk/fstool.sh
OBJTOOL    := ../sdk/link.sh
SYSTOOL    := ../sdk/gensyscalls.sh

DISKLABEL  := ./build/defaultdisklabel
OFFSET     := 2

OS_DIR     := ./OS
LOAD_DIR   := $(OS_DIR)/Loader/LIMNstation
KERN_DIR   := $(OS_DIR)/OSKernel
SYSBIN_DIR := $(OS_DIR)/SystemBin
HAL_DIR    := $(OS_DIR)/HAL
DBG_DIR    := $(OS_DIR)/224Debug
BR_DIR     := $(OS_DIR)/BootResources
DRIVER_DIR := $(OS_DIR)/BootDrivers
RTL_DIR    := $(OS_DIR)/OSDLL
SYSINIT_DIR:= $(OS_DIR)/SystemInit

FSTOOL     := $(FST) $(DISTIMAGE) offset=$(OFFSET)

dist: $(DISTIMAGE) bootable sysfiles

bootable:
	make -C $(LOAD_DIR)
	dd if=$(LOAD_DIR)/BootSector.bin of=$(DISTIMAGE) bs=4096 conv=notrunc seek=$$((1 + $(OFFSET))) 2>/dev/null
	dd if=$(LOAD_DIR)/Loader.a3x of=$(DISTIMAGE) bs=4096 conv=notrunc seek=$$((2 + $(OFFSET))) 2>/dev/null

sysfiles: $(SYSBIN_DIR)/Dragonfruit.dll
	make -C $(RTL_DIR)

	../sdk/install.sh $(RTL_DIR)

	make -C $(HAL_DIR)
	$(FSTOOL) u /mintia/BootResources.txt $(OS_DIR)/BootResources.txt
	$(FSTOOL) u /mintia/BootDrivers.txt $(OS_DIR)/BootDrivers.txt

	make -C $(KERN_DIR)
	make -C $(DBG_DIR)
	make -C $(DRIVER_DIR)

	make -C $(SYSINIT_DIR)

	make -C $(SYSBIN_DIR)
	make -C $(BR_DIR)

$(SYSBIN_DIR)/Dragonfruit.dll: ../sdk/lib/dfrt/dfrt.f.o
	cp ../sdk/lib/dfrt/dfrt.f.o $(SYSBIN_DIR)/Dragonfruit.dll
	$(OBJTOOL) move $(SYSBIN_DIR)/Dragonfruit.dll mintiadll text=0x300000,data=text+text_size+align,bss=data+data_size+align

$(DISTIMAGE):
	dd if=/dev/zero of=$(DISTIMAGE) bs=4096 count=$(DISTIMGSZ) 2>/dev/null
	dd if=$(DISKLABEL) of=$(DISTIMAGE) bs=4096 count=1 seek=0 conv=notrunc
	$(FSTOOL) f

cleanup:
	make -C $(OS_DIR) cleanup
	rm -f $(DISTIMAGE)
	rm -f $(SYSBIN_DIR)/*.dll $(SYSBIN_DIR)/*.exe