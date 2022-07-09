DFILES := $(shell find . -type f -name "*.df")
OBJ    := $(DFILES:.df=.o)

DC      = ../../../sdk/dragonc.sh $(BUILDCONFIG)
AS      = ../../../sdk/asm.sh
OBJTOOL = ../../../sdk/link.sh
LD      =  $(OBJTOOL) link

all: OSLoader.a3x
	make -C LIMNstation

OSLoader.a3x: $(OBJ)
	$(LD) OSLoader.a3x L/rta3x/_boot.o $(OBJ) L/rta3x/rta3x.o
	$(OBJTOOL) move OSLoader.a3x text=0x40400,data=text+text_size,bss=data+data_size
	cp OSLoader.a3x OSLoader.LOFF
	$(OBJTOOL) binary -nobss OSLoader.a3x

%.o: %.df *.h
	$(DC) $< $@ incdir=./

cleanup:
	make -C LIMNstation cleanup
	rm -f ${OBJ} *.bin *.LOFF *.a3x