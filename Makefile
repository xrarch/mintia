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
LIB_DIR    := $(OS_DIR)/Library
HAL_DIR    := $(OS_DIR)/HAL
DBG_DIR    := $(OS_DIR)/224Debug
BR_DIR     := $(OS_DIR)/BootResources
DRIVER_DIR := $(OS_DIR)/BootDrivers
RTL_DIR    := $(OS_DIR)/OSDLL

FSTOOL     := $(FST) $(DISTIMAGE) offset=$(OFFSET)

dist: $(DISTIMAGE) bootable sysfiles kernel 224debug drivers

bootable:
	make -C $(LOAD_DIR)
	dd if=$(LOAD_DIR)/BootSector.bin of=$(DISTIMAGE) bs=4096 conv=notrunc seek=$$((1 + $(OFFSET))) 2>/dev/null
	dd if=$(LOAD_DIR)/Loader.a3x of=$(DISTIMAGE) bs=4096 conv=notrunc seek=$$((2 + $(OFFSET))) 2>/dev/null

kernel:
	make -C $(KERN_DIR)
	$(FSTOOL) u /mintia/OSKernel.exe $(KERN_DIR)/OSKernel.exe
	$(FSTOOL) chmod /mintia/OSKernel.exe 493

224debug:
	make -C $(DBG_DIR)
	$(FSTOOL) u /mintia/224Debug.exe $(DBG_DIR)/224Debug.exe
	$(FSTOOL) chmod /mintia/224Debug.exe 493

sysfiles: $(LIB_DIR)/Dragonfruit.dll
	make -C $(RTL_DIR)

	../sdk/install.sh $(RTL_DIR)

	make -C $(HAL_DIR)
	$(FSTOOL) u /mintia/BootResources.txt $(OS_DIR)/BootResources.txt
	$(FSTOOL) u /mintia/BootDrivers.txt $(OS_DIR)/BootDrivers.txt
	make -C $(LIB_DIR)
	make -C $(BR_DIR)

drivers: $(LIB_DIR)/Dragonfruit.dll
	make -C $(DRIVER_DIR)

$(LIB_DIR)/Dragonfruit.dll: ../sdk/lib/dfrt/dfrt.f.o
	cp ../sdk/lib/dfrt/dfrt.f.o $(LIB_DIR)/Dragonfruit.dll
	$(OBJTOOL) move $(LIB_DIR)/Dragonfruit.dll mintiadll text=0x300000,data=text+text_size+align,bss=data+data_size+align

$(DISTIMAGE):
	dd if=/dev/zero of=$(DISTIMAGE) bs=4096 count=$(DISTIMGSZ) 2>/dev/null
	dd if=$(DISKLABEL) of=$(DISTIMAGE) bs=4096 count=1 seek=0 conv=notrunc
	$(FSTOOL) f

cleanup:
	make -C $(OS_DIR) cleanup
	rm -f $(DISTIMAGE)
	rm -f OS/Library/*.dll