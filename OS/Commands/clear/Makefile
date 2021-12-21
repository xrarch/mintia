DFILES := $(shell find . -type f -name "*.df")
HFILES := $(shell find . -type f -name "*.h")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      =  ../../../../sdk/dragonc.sh
AS      = ../../../../sdk/asm.sh
OBJTOOL = ../../../../sdk/link.sh
LD      =  $(OBJTOOL) link

SYSBINDIR = ../../SystemBin
BINDIR  = ../../Bin

DCFLAGS = incdir=./include/

all: $(BINDIR)/clear.exe

$(BINDIR)/clear.exe: $(OBJ)
	$(LD) $(BINDIR)/clear.exe $(OBJ) -d $(SYSBINDIR)/OSDLL.dll
	$(OBJTOOL) move $(BINDIR)/clear.exe mintia

%.o: %.df
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF $(BINDIR)/clear.exe