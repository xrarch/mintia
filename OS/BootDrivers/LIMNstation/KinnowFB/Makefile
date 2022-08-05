DFILES := $(shell find . -type f -name "*.df")
SFILES := $(shell find . -type f -name "*.s")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      = ../../../../../sdk/dragonc.sh $(BUILDCONFIG)
AS      = ../../../../../sdk/asm.sh
OBJTOOL = ../../../../../sdk/link.sh
LD      =  $(OBJTOOL) link

SYSBINDIR  = ../../../SystemBin

DCFLAGS = incdir=../../../HAL/include/:../../../HAL/LIMNstation/include:../../../OSKernel/include/

all: KinnowFB.sys

KinnowFB.sys: $(OBJ)
	$(LD) -nostubs KinnowFB.sys $(OBJ) -d $(SYSBINDIR)/OSKernel.exe HAL.dll:$(SYSBINDIR)/HALLIMNstation.dll $(SYSBINDIR)/Dragonfruit.dll
	$(OBJTOOL) move KinnowFB.sys base=0x80900000

%.o: %.df ../../../HAL/include/*.h ../../../HAL/LIMNstation/include/*.h ../../../OSKernel/include/*.h
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF KinnowFB.sys