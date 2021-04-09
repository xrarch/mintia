DFILES := $(shell find ./src -type f -name "*.df")
SFILES := $(shell find ./src -type f -name "*.s")
OBJ    := $(DFILES:.df=.o)
SOBJ   := $(SFILES:.s=.o)

DC  =  ../../../sdk/dragonc.sh
AS  =  ../../../sdk/asm.sh
LD  =  ../../../sdk/link.sh link
INS =  ../../../sdk/install.sh

all: obj/OSDLL.dll
	cp -r obj/OSDLL.dll ../Library/OSDLL.dll

obj/OSDLL.dll: $(OBJ) $(SOBJ)
	mkdir -p obj
	mkdir -p src
	$(LD) obj/OSDLL.dll $(OBJ) $(SOBJ) -d ../Library/Dragonfruit.dll

%.o: %.df
	$(DC) $< $@ incdir=./headers/

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f $(OBJ) $(SOBJ) obj/*