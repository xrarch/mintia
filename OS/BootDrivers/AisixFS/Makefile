DFILES := $(shell find . -type f -name "*.df")
SFILES := $(shell find . -type f -name "*.s")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      = ../../../../sdk/dragonc.sh $(BUILDCONFIG)
AS      = ../../../../sdk/asm.sh
OBJTOOL = ../../../../sdk/link.sh
LD      =  $(OBJTOOL) link

SYSBINDIR  = ../../SystemBin

DCFLAGS = incdir=../../HAL/include/:../../OSKernel/include/

all: AisixFS.sys

AisixFS.sys: $(OBJ)
	$(LD) -nostubs AisixFS.sys $(OBJ) -d $(SYSBINDIR)/OSKernel.exe HAL.dll:$(SYSBINDIR)/HALLIMNstation.dll $(SYSBINDIR)/Dragonfruit.dll
	$(OBJTOOL) move AisixFS.sys base=0x80F00000

%.o: %.df ../../HAL/include/*.h ../../HAL/LIMNstation/include/*.h ../../OSKernel/include/*.h *.h
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF AisixFS.sys