DFILES := $(shell find . -type f -name "*.df")
SFILES := $(shell find . -type f -name "*.s")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      = ../../../../../sdk/dragonc.sh
AS      = ../../../../../sdk/asm.sh
OBJTOOL = ../../../../../sdk/link.sh
LD      =  $(OBJTOOL) link

SYSBINDIR  = ../../../SystemBin

DCFLAGS = incdir=../../../HAL/include/:../../../HAL/LIMNstation/include:../../../OSKernel/include/

all: AnalogClockTest.sys

AnalogClockTest.sys: $(OBJ)
	$(LD) AnalogClockTest.sys $(OBJ) -d $(SYSBINDIR)/OSKernel.exe HAL.dll:$(SYSBINDIR)/HALLIMNstation.dll $(SYSBINDIR)/Dragonfruit.dll
	$(OBJTOOL) move AnalogClockTest.sys text=0x80500000,data=text+text_size+align,bss=data+data_size+align

%.o: %.df ../../../HAL/include/*.h ../../../HAL/LIMNstation/include/*.h ../../../OSKernel/include/*.h
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF AnalogClockTest.sys