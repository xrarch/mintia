DFILES := $(shell find ./src -type f -name "*.df")
SFILES := $(shell find ./src -type f -name "*.s")
OBJ    := $(DFILES:.df=.o)
SOBJ   := $(SFILES:.s=.o)

DC  =  ../../../sdk/dragonc.sh
AS  =  ../../../sdk/asm.sh
LD  =  ../../../sdk/link.sh link

all: obj/RTL.dll
	cp -r obj/RTL.dll ../Library/RTL.dll

obj/RTL.dll: $(OBJ) $(SOBJ)
	$(LD) obj/RTL.dll $(OBJ) $(SOBJ) -d ../Library/Dragonfruit.dll

%.o: %.df
	$(DC) $< $@ incdir=./headers/

%.o: %.s
	$(AS) $< $@

cleanup:
	rm $(OBJ) $(SOBJ) obj/RTL.dll