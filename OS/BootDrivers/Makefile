SYSFILEDIR := /mintia/BootDrivers/

FSTOOL     := ../../$(FST) ../../$(DISTIMAGE) offset=$(OFFSET)

all:
	make -C LIMNstation
	make -C AisixFS
	make sysfiles

sysfiles:
	$(FSTOOL) ud $(SYSFILEDIR) ./Dist.fst

cleanup:
	make -C LIMNstation cleanup
	make -C AisixFS cleanup