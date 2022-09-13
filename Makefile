export REPO       := $(PWD)
export BUILDROOT  := $(REPO)/Root
export SYSROOT    := mintia
export BINROOT    := mintia/bin
export DRIVERROOT := mintia/BootDrivers

ifndef SDK
	SDK := $(REPO)/../sdk
endif

ifndef PLATFORM
	PLATFORM := LIMNstation
endif

ifndef DEBUGCHECKS
	DEBUGCHECKS := 0
endif

ifeq ($(DEBUGCHECKS),1)
	CHKFRE := chk
else
	CHKFRE := fre
endif

export CHKFRE

export SDK
export PLATFORM

export DFC := $(SDK)/dragonc.sh
export LNK := $(SDK)/link.sh
export ASM := $(SDK)/asm.sh
export FST := $(SDK)/fstool.sh

export KERNINCDIR   := $(REPO)/OS/OSKernel/include/
export HALINCDIR    := $(REPO)/OS/HAL/include/:$(REPO)/OS/HAL/$(PLATFORM)/include/

PROJECTS := OSLoader/$(PLATFORM)/bootcode \
			OSLoader \
			HAL/$(PLATFORM) \
			OSKernel \
			OSDLL \
			SystemInit \
			TestDLL

KERNELMODULES := KDebug \
				BootDrivers/AisixFS

COMMANDS := $(wildcard OS/Commands/*)

include $(PLATFORM).mk

export SYSCALLGEN := $(SDK)/gensyscalls.sh $(ARCHITECTURE)

export HALBIN   := $(BUILDROOT)/$(SYSROOT)/HAL$(PLATFORM).dll.$(ARCHITECTURE).$(CHKFRE)
export KERNBIN  := $(BUILDROOT)/$(SYSROOT)/OSKernel.exe.$(ARCHITECTURE).$(CHKFRE)
export DFLIBBIN := $(BUILDROOT)/$(SYSROOT)/Dragonfruit.dll.$(ARCHITECTURE).$(CHKFRE)
export OSDLLBIN := $(BUILDROOT)/$(SYSROOT)/OSDLL.dll.$(ARCHITECTURE).$(CHKFRE)

ifndef SMALLDIST
	export DISTIMAGE  := $(REPO)/build/mintia-$(PLATFORM)-$(CHKFRE).img
	export DISTIMGSZ  := 112640 # 52MB
	export DISKLABEL  := $(REPO)/build/default.disklabel
else
	export DISTIMAGE  := $(REPO)/build/mintia-$(PLATFORM)-$(CHKFRE)-small.img
	export DISTIMGSZ  := 20480 # 10MB
	export DISKLABEL  := $(REPO)/build/small.disklabel
endif

export FSTOOL := $(FST) $(DISTIMAGE) offset=4

export ARCHITECTURE

BUILDCONFIG += DEBUGCHECKS=$(DEBUGCHECKS) $(PLATFORM)=1 $(ARCHITECTURE)=1 target=$(ARCHITECTURE)

DFC += $(BUILDCONFIG)
ASM += target=$(ARCHITECTURE)


all: $(DISTIMAGE) $(PROJECTS) $(DFLIBBIN) $(KERNELMODULES) $(REPO)/OS/OSDLL/obj/$(ARCHITECTURE)/OSDLL.dll $(COMMANDS) $(shell rm -f DELTA)
	$(FSTOOL) udf / DELTA

$(DISTIMAGE):
	dd if=/dev/zero of=$(DISTIMAGE) bs=512 count=$(DISTIMGSZ) 2>/dev/null
	dd if=$(DISKLABEL) of=$(DISTIMAGE) bs=512 count=1 seek=0 conv=notrunc
	$(FSTOOL) f
	rm -f OS/OSLoader/$(PLATFORM)/bootcode/new
	$(FSTOOL) udf / ExecManifest .$(ARCHITECTURE).$(CHKFRE)
	$(FSTOOL) udf / ExecManifest.$(PLATFORM) .$(ARCHITECTURE).$(CHKFRE)
	$(FSTOOL) ud / TextManifest

$(DFLIBBIN): $(SDK)/lib/$(ARCHITECTURE)/dfrt/dfrt.f.o
	echo "mintia/Dragonfruit.dll $(DFLIBBIN) 493" >> $(REPO)/DELTA
	cp $(SDK)/lib/$(ARCHITECTURE)/dfrt/dfrt.f.o $(DFLIBBIN)
	$(LNK) move $(DFLIBBIN) base=0x80300000

$(PROJECTS): $(DISTIMAGE)
	make -C OS/$@

$(REPO)/OS/OSDLL/obj/$(ARCHITECTURE)/OSDLL.dll: OSDLL
	mkdir -p $(REPO)/OS/OSDLL/obj/$(ARCHITECTURE)
	cp $(OSDLLBIN) $(REPO)/OS/OSDLL/obj/$(ARCHITECTURE)/OSDLL.dll
	$(SDK)/install.sh $(REPO)/OS/OSDLL

SystemInit: OSDLL

TestDLL: OSDLL

HAL/$(PLATFORM): $(DFLIBBIN)

OSKernel: HAL/$(PLATFORM)

$(KERNELMODULES): HAL/$(PLATFORM) OSKernel $(DRIVERROOT)
	make -C OS/$@

$(COMMANDS): $(BINROOT) OSDLL $(REPO)/OS/OSDLL/obj/$(ARCHITECTURE)/OSDLL.dll
	make -C $@

$(DRIVERROOT):
	mkdir -p $(DRIVERROOT)

$(BINROOT):
	mkdir -p $(BINROOT)

cleanup:
	rm -f $(REPO)/OS/OSDLL/obj/$(ARCHITECTURE)/OSDLL.dll
	rm -f $(DFLIBBIN)

	for dir in $(COMMANDS); do \
		make -C $$dir cleanup; \
	done

	for dir in $(PROJECTS); do \
		make -C OS/$$dir cleanup; \
	done

	for dir in $(KERNELMODULES); do \
		make -C OS/$$dir cleanup; \
	done