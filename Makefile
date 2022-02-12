DISTIMAGE  := ./build/mintia-dist.img
DISTIMGSZ  := 112640 # 52MB
FST        := ../sdk/fstool.sh
OBJTOOL    := ../sdk/link.sh
SYSTOOL    := ../sdk/gensyscalls.sh

DISKLABEL  := ./build/defaultdisklabel
OFFSET     := 4

OS_DIR     := ./OS
LOAD_DIR   := $(OS_DIR)/OSLoader
KERN_DIR   := $(OS_DIR)/OSKernel
SYSBIN_DIR := $(OS_DIR)/SystemBin
HAL_DIR    := $(OS_DIR)/HAL
DBG_DIR    := $(OS_DIR)/KDebug
BR_DIR     := $(OS_DIR)/BootResources
DRIVER_DIR := $(OS_DIR)/BootDrivers
RTL_DIR    := $(OS_DIR)/OSDLL
SYSINIT_DIR:= $(OS_DIR)/SystemInit
BIN_DIR    := $(OS_DIR)/Bin
COMMANDS_DIR := $(OS_DIR)/Commands

FSTOOL     := $(FST) $(DISTIMAGE) offset=$(OFFSET)

dist: bootable sysfiles

bootable: $(DISTIMAGE)
	make -C $(LOAD_DIR)
	dd if=$(LOAD_DIR)/LIMNstation/a3xBootDescriptor.bin of=$(DISTIMAGE) bs=512 conv=notrunc seek=$$((1 + $(OFFSET))) 2>/dev/null
	dd if=$(LOAD_DIR)/LIMNstation/AisixFSBoot.bin of=$(DISTIMAGE) bs=512 conv=notrunc seek=$$((3 + $(OFFSET))) 2>/dev/null
	$(FSTOOL) u /OSLoader.a3x $(LOAD_DIR)/OSLoader.a3x

sysfiles: $(SYSBIN_DIR)/Dragonfruit.dll $(DISTIMAGE)
	make -C $(RTL_DIR)

	../sdk/install.sh $(RTL_DIR)

	make -C $(HAL_DIR)
	$(FSTOOL) u /mintia/BootResources.txt $(OS_DIR)/BootResources.txt
	$(FSTOOL) u /mintia/BootDrivers.txt $(OS_DIR)/BootDrivers.txt
	$(FSTOOL) u /mintia/SystemInit.cfg $(OS_DIR)/SystemInit.cfg
	$(FSTOOL) u /mintia/users.cfg $(OS_DIR)/users.cfg
	$(FSTOOL) u /mintia/groups.cfg $(OS_DIR)/groups.cfg

	$(FSTOOL) u /mintia/login.cfg $(OS_DIR)/login.cfg
	$(FSTOOL) chmod /mintia/login.cfg 416

	$(FSTOOL) u /mintia/motd.txt $(OS_DIR)/motd.txt

	$(FSTOOL) u /home/guest/README $(OS_DIR)/README
	$(FSTOOL) chown /home/guest 100
	$(FSTOOL) chown /home/guest/README 100

	make -C $(KERN_DIR)
	make -C $(DBG_DIR)
	make -C $(DRIVER_DIR)

	make -C $(SYSINIT_DIR)

	make -C $(COMMANDS_DIR)

	make -C $(OS_DIR)/TestDLL

	make -C $(SYSBIN_DIR)
	make -C $(BIN_DIR)
	make -C $(BR_DIR)

$(SYSBIN_DIR)/Dragonfruit.dll: ../sdk/lib/dfrt/dfrt.f.o
	cp ../sdk/lib/dfrt/dfrt.f.o $(SYSBIN_DIR)/Dragonfruit.dll
	$(OBJTOOL) move $(SYSBIN_DIR)/Dragonfruit.dll mintiadll text=0x80300000,data=text+text_size+align,bss=data+data_size+align

$(DISTIMAGE):
	dd if=/dev/zero of=$(DISTIMAGE) bs=512 count=$(DISTIMGSZ) 2>/dev/null
	dd if=$(DISKLABEL) of=$(DISTIMAGE) bs=512 count=1 seek=0 conv=notrunc
	$(FSTOOL) f

cleanup:
	make -C $(OS_DIR) cleanup
	rm -f $(DISTIMAGE)
	rm -f $(SYSBIN_DIR)/*.dll $(SYSBIN_DIR)/*.exe