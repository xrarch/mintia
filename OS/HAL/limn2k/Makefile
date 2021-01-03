DFILES := $(shell find . -type f -name "*.df")
SFILES := $(shell find . -type f -name "*.s")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      =  ../../../../sdk/dragonc.sh
AS      = ../../../../sdk/asm.sh
OBJTOOL = ../../../../sdk/link.sh
LD      =  $(OBJTOOL) link

DCFLAGS = incdir=./include/:../include/

all: HALlimn2k.o

HALlimn2k.o: $(OBJ)
	$(LD) -f HALlimn2k.o $(OBJ)

%.o: %.df ./include/*.h ../include/*.h
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF HALlimn2k.o
