DFILES := $(shell find . -type f -name "*.df")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      =  ../../../sdk/dragonc.sh
AS      = ../../../sdk/asm.sh
OBJTOOL = ../../../sdk/link.sh
LD      =  $(OBJTOOL) link

LIBDIR  = ../Library

DCFLAGS = incdir=./include/:../HAL/include

all: AndromedaKernel.exe

AndromedaKernel.exe: $(OBJ)
	$(LD) AndromedaKernel.exe $(OBJ) -d HAL.dll:$(LIBDIR)/HALLIMNstation.dll $(LIBDIR)/Dragonfruit.dll
	$(OBJTOOL) move AndromedaKernel.exe text=0x120000,data=text+text_size+align,bss=data+data_size+align

%.o: %.df ./include/*.h ../HAL/include/*.h
	$(DC) $(DCFLAGS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF AndromedaKernel.exe
