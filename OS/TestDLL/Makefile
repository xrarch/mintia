DFILES := $(shell find . -type f -name "*.df")
HFILES := $(shell find . -type f -name "*.h")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      =  ../../../sdk/dragonc.sh
AS      = ../../../sdk/asm.sh
OBJTOOL = ../../../sdk/link.sh
LD      =  $(OBJTOOL) link

SYSBINDIR  = ../SystemBin

DCFLAGS = incdir=./include/

all: $(SYSBINDIR)/Test.dll

$(SYSBINDIR)/Test.dll: $(OBJ)
	$(LD) $(SYSBINDIR)/Test.dll $(OBJ) -d $(SYSBINDIR)/OSDLL.dll
	$(OBJTOOL) move $(SYSBINDIR)/Test.dll mintiadll text=0x200000,data=text+text_size+align,bss=data+data_size+align

%.o: %.df
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF $(SYSBINDIR)/Test.dll