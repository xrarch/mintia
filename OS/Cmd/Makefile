DFILES := $(shell find . -type f -name "*.df")
HFILES := $(shell find . -type f -name "*.h")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      =  ../../../sdk/dragonc.sh
AS      = ../../../sdk/asm.sh
OBJTOOL = ../../../sdk/link.sh
LD      =  $(OBJTOOL) link

SYSBINDIR  = ../SystemBin

DCFLAGS = incdir=./include/

all: $(SYSBINDIR)/Cmd.exe

$(SYSBINDIR)/Cmd.exe: $(OBJ)
	$(LD) $(SYSBINDIR)/Cmd.exe $(OBJ) -d $(SYSBINDIR)/OSDLL.dll
	$(OBJTOOL) move $(SYSBINDIR)/Cmd.exe mintia

%.o: %.df
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF $(SYSBINDIR)/Cmd.exe