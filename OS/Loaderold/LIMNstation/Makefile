DFILES := $(shell find . -type f -name "*.df")
OBJ    := $(DFILES:.df=.o)

DC      = ../../../../sdk/dragonc.sh
AS      = ../../../../sdk/asm.sh
OBJTOOL = ../../../../sdk/link.sh
LD      =  $(OBJTOOL) link

all: Loader.a3x BootSector.bin

BootSector.bin: BootSector.s
	$(AS) format=flat BootSector.s BootSector.bin

Loader.a3x: $(OBJ)
	$(LD) Loader.a3x L/rta3x/_boot.o $(OBJ) L/rta3x/rta3x.o
	$(OBJTOOL) move Loader.a3x text=0x40000,data=text+text_size,bss=data+data_size
	cp Loader.a3x Loader.LOFF
	$(OBJTOOL) binary -nobss Loader.a3x

%.o: %.df *.h
	$(DC) $< $@

cleanup:
	rm -f ${OBJ} *.bin *.LOFF *.a3x
