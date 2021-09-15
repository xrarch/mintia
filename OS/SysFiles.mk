DISTIMAGE  := ../../build/mintia-dist.img
FST        := ../../../sdk/fstool.sh
OFFSET     := 2
FSTOOL     := $(FST) $(DISTIMAGE) offset=$(OFFSET)

sysfiles:
	$(FSTOOL) ud $(SYSFILEDIR) ./Dist.fst