export REPO       := $(shell pwd)
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
export LIBDIR       := $(REPO)/OS/Headers/

BOOTCODE := OSLoader/$(PLATFORM)/bootcode \
			OSLoader

PROJECTS := HAL/$(PLATFORM) \
			OSKernel \
			SystemInit \
			AMS/Server

ULIBRARIES := AMS/Client

LIBRARIES := OSDLL $(ULIBRARIES)

KERNELMODULES := BootDrivers/AisixFS \
				BootDrivers/AnalogClockTest \
				KDebug

COMMANDS := $(wildcard OS/Commands/*)

PLATFORMS := LIMNstation fox32

include $(PLATFORM).mk

export SYSCALLGEN := $(SDK)/gensyscalls.sh $(ARCHITECTURE)

export HALBIN   := $(BUILDROOT)/$(SYSROOT)/HAL$(PLATFORM).dll.$(ARCHITECTURE).$(CHKFRE)
export KERNBIN  := $(BUILDROOT)/$(SYSROOT)/OSKernel.exe.$(ARCHITECTURE).$(CHKFRE)
export DFLIBBIN := $(BUILDROOT)/$(SYSROOT)/Dragonfruit.dll.$(ARCHITECTURE).$(CHKFRE)
export OSDLLBIN := $(BUILDROOT)/$(SYSROOT)/OSDLL.dll.$(ARCHITECTURE).$(CHKFRE)
export AMSBIN   := $(BUILDROOT)/$(SYSROOT)/ams.dll.$(ARCHITECTURE).$(CHKFRE)

ifndef SMALLDIST
	export DISTIMAGE  := $(REPO)/build/mintia-$(PLATFORM)-$(CHKFRE).img
	export DISTIMGSZ  := 112640 # 52MB
	export DISKLABEL  := $(REPO)/build/default.disklabel
else
	export DISTIMAGE  := $(REPO)/build/mintia-$(PLATFORM)-$(CHKFRE)-small.img
	export DISTIMGSZ  := 20480 # 10MB
	export DISKLABEL  := $(REPO)/build/small.disklabel
	TEXTSUFFIX := .small
endif

export FSTOOL := $(FST) $(DISTIMAGE) offset=4

export ARCHITECTURE

BUILDCONFIG += DEBUGCHECKS=$(DEBUGCHECKS) $(PLATFORM)=1 $(ARCHITECTURE)=1 target=$(ARCHITECTURE)

DFC += $(BUILDCONFIG)
ASM += target=$(ARCHITECTURE)

ifndef PROJECT
	PROJECT := $(BOOTCODE) $(PROJECTS) $(KERNELMODULES) $(LIBRARIES) $(COMMANDS)
endif

all: $(PROJECT)
	$(FSTOOL) wdf / DELTA
	rm -f DELTA

update:
	$(FSTOOL) udf / ExecManifest .$(ARCHITECTURE).$(CHKFRE)
	$(FSTOOL) udf / ExecManifest.$(PLATFORM) .$(ARCHITECTURE).$(CHKFRE)
	$(FSTOOL) ud / TextManifest
	$(FSTOOL) ud / TextManifestSuffixed $(TEXTSUFFIX)

$(DISTIMAGE):
	dd if=/dev/zero of=$(DISTIMAGE) bs=512 count=$(DISTIMGSZ) 2>/dev/null
	dd if=$(DISKLABEL) of=$(DISTIMAGE) bs=512 count=1 seek=0 conv=notrunc
	$(FSTOOL) f
	rm -f OS/OSLoader/$(PLATFORM)/bootcode/.new
	$(FSTOOL) udf / ExecManifest.$(PLATFORM) .$(ARCHITECTURE).$(CHKFRE)
	$(FSTOOL) udf / ExecManifest .$(ARCHITECTURE).$(CHKFRE)
	$(FSTOOL) ud / TextManifest
	$(FSTOOL) ud / TextManifestSuffixed $(TEXTSUFFIX)

$(DFLIBBIN): $(SDK)/lib/$(ARCHITECTURE)/dfrt/dfrt.f.o $(DISTIMAGE)
	cp $(SDK)/lib/$(ARCHITECTURE)/dfrt/dfrt.f.o $(DFLIBBIN)
	$(LNK) move $(DFLIBBIN) base=0x80300000
	echo "mintia/Dragonfruit.dll $(DFLIBBIN) 493" >> $(REPO)/DELTA

$(BOOTCODE): $(DISTIMAGE)
	make -C OS/$@

$(PROJECTS): $(DISTIMAGE) OSDLL
	make -C OS/$@

$(LIBRARIES): $(DISTIMAGE)
	make -C OS/$@

$(ULIBRARIES): OSDLL

SystemInit: OSDLL

HAL/$(PLATFORM): $(DFLIBBIN)

OSKernel: HAL/$(PLATFORM)

$(KERNELMODULES): $(DISTIMAGE) HAL/$(PLATFORM) OSKernel $(BUILDROOT)/$(DRIVERROOT)
	make -C OS/$@

$(COMMANDS): $(DISTIMAGE) $(BUILDROOT)/$(BINROOT) $(LIBRARIES)
	make -C $@

$(BUILDROOT)/$(DRIVERROOT):
	mkdir -p $(BUILDROOT)/$(DRIVERROOT)

$(BUILDROOT)/$(BINROOT):
	mkdir -p $(BUILDROOT)/$(BINROOT)

cleanupall:
	for platform in $(PLATFORMS); do \
		make cleanup PLATFORM=$$platform; \
		make cleanup PLATFORM=$$platform DEBUGCHECKS=1; \
	done

cleanup:
	rm -f $(DISTIMAGE)
	rm -f $(DFLIBBIN)

	for dir in $(COMMANDS); do \
		make -C $$dir cleanup; \
	done

	for dir in $(PROJECTS); do \
		make -C OS/$$dir cleanup; \
	done

	for dir in $(LIBRARIES); do \
		make -C OS/$$dir cleanup; \
	done

	for dir in $(KERNELMODULES); do \
		make -C OS/$$dir cleanup; \
	done

	for dir in $(BOOTCODE); do \
		make -C OS/$$dir cleanup; \
	done