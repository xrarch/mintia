DFILES := $(shell find . -type f -name "*.df")
SFILES := $(shell find . -type f -name "*.s")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      =  ../../../../sdk/dragonc.sh
AS      = ../../../../sdk/asm.sh
OBJTOOL = ../../../../sdk/link.sh
LD      =  $(OBJTOOL) link

SYSBINDIR  = ../../SystemBin

HAL     = $(SYSBINDIR)/HALLIMNstation.dll

DCFLAGS = incdir=./include/:../limn2600/include:../include

all: $(HAL)

$(HAL): $(OBJ) ../HAL/HALhal.o ../limn2600/HALlimn2600.o
	$(LD) $(HAL) L/rta3x/_boot.o $(OBJ) L/rta3x/cia3x.o ../HAL/HALhal.o ../limn2600/HALlimn2600.o -d $(SYSBINDIR)/Dragonfruit.dll
	$(OBJTOOL) move $(HAL) text=0x80101000,data=text+text_size+align,bss=data+data_size+align

%.o: %.df ./include/*.h ../limn2600/include/*.h ../include/*.h
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF $(HAL)