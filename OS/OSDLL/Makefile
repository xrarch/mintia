DFILES := $(shell find ./src -type f -name "*.df")
SFILES := $(shell find ./src -type f -name "*.s")
OBJ    := $(DFILES:.df=.o)
SOBJ   := $(SFILES:.s=.o)

DC  =  ../../../sdk/dragonc.sh $(BUILDCONFIG)
AS  =  ../../../sdk/asm.sh
OBJTOOL = ../../../sdk/link.sh
LD  =  ../../../sdk/link.sh link
INS =  ../../../sdk/install.sh
SYSTOOL = ../../../sdk/gensyscalls.sh

all: obj/$(TARGET)/OSDLL.dll
	cp -r obj/$(TARGET)/OSDLL.dll ../SystemBin/OSDLL.dll

obj/$(TARGET)/OSDLL.dll: $(OBJ) $(SOBJ)
	mkdir -p obj/$(TARGET)
	mkdir -p src
	$(LD) obj/$(TARGET)/OSDLL.dll $(SOBJ) $(OBJ) L/dfrt/dfrt.f.o
	$(OBJTOOL) move obj/$(TARGET)/OSDLL.dll mintiadll text=0x1000,data=text+text_size+align,bss=data+data_size+align
	$(OBJTOOL) dystrip obj/$(TARGET)/OSDLL.dll

%.o: %.df ./headers/* ./src/OSDLL.h
	$(DC) $< $@ incdir=./headers/

%.o: %.s ./headers/* ./src/OSDLL.h
	$(AS) $< $@

src/limn2600/OSCallStubs.s: ./headers/OSCalls.h 
	$(SYSTOOL) ./headers/OSCalls.h ./src/limn2600/OSCallStubs.s NO

cleanup:
	rm -f $(OBJ) $(SOBJ) obj/*/*.dll