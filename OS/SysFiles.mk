DISTIMAGE  := ../../build/mintia-dist.img
FST        := ../../../sdk/fstool.sh
OFFSET     := 4
FSTOOL     := $(FST) $(DISTIMAGE) offset=$(OFFSET)

sysfiles:
	$(FSTOOL) ud $(SYSFILEDIR) ./Dist.fst