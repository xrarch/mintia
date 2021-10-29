DFILES := $(shell find ./src -type f -name "*.df")
SFILES := $(shell find ./src -type f -name "*.s")
OBJ    := $(DFILES:.df=.o)
SOBJ   := $(SFILES:.s=.o)

DC  =  ../../../sdk/dragonc.sh
AS  =  ../../../sdk/asm.sh
OBJTOOL = ../../../sdk/link.sh
LD  =  ../../../sdk/link.sh link
INS =  ../../../sdk/install.sh
SYSTOOL = ../../../sdk/gensyscalls.sh

all: obj/OSDLL.dll
	cp -r obj/OSDLL.dll ../Library/OSDLL.dll

obj/OSDLL.dll: $(OBJ) $(SOBJ)
	mkdir -p obj
	mkdir -p src
	$(LD) obj/OSDLL.dll $(SOBJ) $(OBJ) L/dfrt/dfrt.f.o
	$(OBJTOOL) move obj/OSDLL.dll mintiadll text=0x1000,data=text+text_size+align,bss=data+data_size+align

%.o: %.df
	$(DC) $< $@ incdir=./headers/

%.o: %.s
	$(AS) $< $@

src/limn2600/OSCallStubs.s: ./headers/OSCalls.h 
	$(SYSTOOL) ./headers/OSCalls.h ./src/limn2600/OSCallStubs.s NO

cleanup:
	rm -f $(OBJ) $(SOBJ) obj/*