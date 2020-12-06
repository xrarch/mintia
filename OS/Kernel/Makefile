DFILES := $(shell find . -type f -name "*.df")
SFILES := $(shell find ./limn2k -type f -name "*.s")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      =  ../../../sdk/dragonc.sh
AS      = ../../../sdk/asm.sh
OBJTOOL = ../../../sdk/link.sh
LD      =  $(OBJTOOL) link

DCFLAGS = incdir=./include/

all: AndromedaKernel.exe

AndromedaKernel.exe: $(OBJ)
	$(LD) AndromedaKernel.exe L/rta3x/_boot.o $(OBJ) L/rta3x/cia3x.o -d ../Library/Dragonfruit.dll
	$(OBJTOOL) move AndromedaKernel.exe text=0x100000,data=text+text_size+align,bss=data+data_size+align

%.o: %.df
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF
