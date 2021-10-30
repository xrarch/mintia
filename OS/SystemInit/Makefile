DFILES := $(shell find . -type f -name "*.df")
HFILES := $(shell find . -type f -name "*.h")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      =  ../../../sdk/dragonc.sh
AS      = ../../../sdk/asm.sh
OBJTOOL = ../../../sdk/link.sh
LD      =  $(OBJTOOL) link

SYSBINDIR  = ../SystemBin

DCFLAGS = incdir=./include/

all: $(SYSBINDIR)/SystemInit.exe

$(SYSBINDIR)/SystemInit.exe: $(OBJ)
	$(LD) $(SYSBINDIR)/SystemInit.exe $(OBJ) -d $(SYSBINDIR)/OSDLL.dll
	$(OBJTOOL) move $(SYSBINDIR)/SystemInit.exe mintia

%.o: %.df
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF $(SYSBINDIR)/SystemInit.exe