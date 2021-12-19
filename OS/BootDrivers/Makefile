SYSFILEDIR := /mintia/BootDrivers/

DISTIMAGE  := ../../build/mintia-dist.img
FST        := ../../../sdk/fstool.sh
OFFSET     := 4
FSTOOL     := $(FST) $(DISTIMAGE) offset=$(OFFSET)

all:
	make -C LIMNstation
	make -C AisixFS
	make sysfiles

sysfiles:
	$(FSTOOL) ud $(SYSFILEDIR) ./Dist.fst

cleanup:
	make -C LIMNstation cleanup
	make -C AisixFS cleanup