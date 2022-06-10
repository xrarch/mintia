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

all: $(BINDIR)/$(CMDNAME).exe

$(BINDIR)/$(CMDNAME).exe: $(OBJ)
	$(LD) $(BINDIR)/$(CMDNAME).exe $(OBJ) -d $(SYSBINDIR)/OSDLL.dll
	$(OBJTOOL) move $(BINDIR)/$(CMDNAME).exe mintia

%.o: %.df $(HFILES)
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF $(BINDIR)/$(CMDNAME).exe