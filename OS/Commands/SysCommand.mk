DFILES := $(shell find . -type f -name "*.df")
HFILES := $(shell find . -type f -name "*.h")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      = ../../../../sdk/dragonc.sh $(BUILDCONFIG)
AS      = ../../../../sdk/asm.sh
OBJTOOL = ../../../../sdk/link.sh
LD      =  $(OBJTOOL) link

SYSBINDIR = ../../SystemBin

DCFLAGS = incdir=./include/

all: $(SYSBINDIR)/$(CMDNAME).exe

$(SYSBINDIR)/$(CMDNAME).exe: $(OBJ)
	$(LD) $(SYSBINDIR)/$(CMDNAME).exe $(OBJ) -d $(SYSBINDIR)/OSDLL.dll
	$(OBJTOOL) move $(SYSBINDIR)/$(CMDNAME).exe mintia

%.o: %.df
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF $(SYSBINDIR)/$(CMDNAME).exe