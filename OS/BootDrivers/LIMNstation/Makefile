all:
	make -C RTC
	make -C Serial
	make -C DKS
	make -C AnalogClockTest
	make sysfiles


SYSFILEDIR := /Andromeda/BootDrivers/

DISTIMAGE  := ../../../Distribution/Andromeda.img
FST        := ../../../../sdk/fstool.sh
OFFSET     := 2
FSTOOL     := $(FST) $(DISTIMAGE) offset=$(OFFSET)

sysfiles:
	$(FSTOOL) ud $(SYSFILEDIR) ./Dist.fst

cleanup:
	make -C RTC cleanup
	make -C Serial cleanup
	make -C DKS cleanup
	make -C AnalogClockTest cleanup