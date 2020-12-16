DISTIMAGE  := ../../Distribution/Andromeda.img
FST        := ../../../sdk/fstool.sh
OFFSET     := 2
FSTOOL     := $(FST) $(DISTIMAGE) offset=$(OFFSET)

sysfiles:
	$(FSTOOL) wd $(SYSFILEDIR) ./Dist.fst