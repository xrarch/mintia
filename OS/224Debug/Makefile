DFILES := $(shell find . -type f -name "*.df")
SFILES := $(shell find . -type f -name "*.s")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      =  ../../../sdk/dragonc.sh
AS      = ../../../sdk/asm.sh
OBJTOOL = ../../../sdk/link.sh
LD      =  $(OBJTOOL) link

LIBDIR  = ../Library

DCFLAGS = incdir=../HAL/include/:../Kernel/include/:./include/

all: 224Debug.exe

224Debug.exe: $(OBJ)
	$(LD) 224Debug.exe $(OBJ) -d ../Kernel/OSKernel.exe HAL.dll:$(LIBDIR)/HALLIMNstation.dll $(LIBDIR)/Dragonfruit.dll
	$(OBJTOOL) move 224Debug.exe text=0x100000,data=text+text_size+align,bss=data+data_size+align

%.o: %.df ../HAL/include/*.h ../Kernel/include/*.h
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF 224Debug.exe