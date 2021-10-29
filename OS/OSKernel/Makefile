DFILES := $(shell find . -type f -name "*.df")
HFILES := $(shell find . -type f -name "*.h")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      =  ../../../sdk/dragonc.sh
AS      = ../../../sdk/asm.sh
OBJTOOL = ../../../sdk/link.sh
LD      =  $(OBJTOOL) link
SYSTOOL = ../../../sdk/gensyscalls.sh

LIBDIR  = ../Library

DCFLAGS = incdir=./include/:../HAL/include

all: OSKernel.exe

OSKernel.exe: $(OBJ) ./Executive/limn2600/OSCallTrampolines.o
	$(LD) OSKernel.exe $(OBJ) ./Executive/limn2600/OSCallTrampolines.o -d HAL.dll:$(LIBDIR)/HALLIMNstation.dll $(LIBDIR)/Dragonfruit.dll
	$(OBJTOOL) move OSKernel.exe text=0x80001000,data=text+text_size+align,bss=data+data_size+align

Executive/limn2600/OSCallTrampolines.s: ../OSDLL/headers/OSCalls.h 
	$(SYSTOOL) ../OSDLL/headers/OSCalls.h NO ./Executive/limn2600/OSCallTrampolines.s

%.o: %.df $(HFILES) ../HAL/include/*.h
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF OSKernel.exe
