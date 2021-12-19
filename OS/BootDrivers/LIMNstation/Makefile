all:
	make -C RTC
	make -C Serial
	make -C DKS
	make -C EBus
	make -C KinnowFB
	make -C Keyboard

	make -C AnalogClockTest

	make sysfiles


SYSFILEDIR := /mintia/BootDrivers/

DISTIMAGE  := ../../../build/mintia-dist.img
FST        := ../../../../sdk/fstool.sh
OFFSET     := 4
FSTOOL     := $(FST) $(DISTIMAGE) offset=$(OFFSET)

sysfiles:
	$(FSTOOL) ud $(SYSFILEDIR) ./Dist.fst

cleanup:
	make -C RTC cleanup
	make -C Serial cleanup
	make -C DKS cleanup
	make -C EBus cleanup
	make -C KinnowFB cleanup
	make -C Keyboard cleanup
	make -C AnalogClockTest cleanup