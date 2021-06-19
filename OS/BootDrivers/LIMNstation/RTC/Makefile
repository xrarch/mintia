DFILES := $(shell find . -type f -name "*.df")
SFILES := $(shell find . -type f -name "*.s")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      = ../../../../../sdk/dragonc.sh
AS      = ../../../../../sdk/asm.sh
OBJTOOL = ../../../../../sdk/link.sh
LD      =  $(OBJTOOL) link

LIBDIR  = ../../../Library

DCFLAGS = incdir=../../../HAL/include/:../../../HAL/LIMNstation/include:../../../OSKernel/include/

all: RTC.sys

RTC.sys: $(OBJ)
	$(LD) RTC.sys $(OBJ) -d ../../../OSKernel/OSKernel.exe HAL.dll:$(LIBDIR)/HALLIMNstation.dll $(LIBDIR)/Dragonfruit.dll
	$(OBJTOOL) move RTC.sys text=0x80400000,data=text+text_size+align,bss=data+data_size+align

%.o: %.df ../../../HAL/include/*.h ../../../HAL/LIMNstation/include/*.h ../../../OSKernel/include/*.h
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF RTC.sys