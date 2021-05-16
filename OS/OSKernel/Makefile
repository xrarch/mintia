DFILES := $(shell find . -type f -name "*.df")
HFILES := $(shell find . -type f -name "*.h")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      =  ../../../sdk/dragonc.sh
AS      = ../../../sdk/asm.sh
OBJTOOL = ../../../sdk/link.sh
LD      =  $(OBJTOOL) link

LIBDIR  = ../Library

DCFLAGS = incdir=./include/:../HAL/include

all: OSKernel.exe

OSKernel.exe: $(OBJ)
	$(LD) OSKernel.exe $(OBJ) -d HAL.dll:$(LIBDIR)/HALLIMNstation.dll $(LIBDIR)/Dragonfruit.dll
	$(OBJTOOL) move OSKernel.exe text=0x300000,data=text+text_size+align,bss=data+data_size+align

%.o: %.df $(HFILES) ../HAL/include/*.h
	$(DC) $(DCFLAGS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF OSKernel.exe
