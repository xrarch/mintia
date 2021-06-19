DFILES := $(shell find . -type f -name "*.df")
SFILES := $(shell find . -type f -name "*.s")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      =  ../../../../sdk/dragonc.sh
AS      = ../../../../sdk/asm.sh
OBJTOOL = ../../../../sdk/link.sh
LD      =  $(OBJTOOL) link

DCFLAGS = incdir=./include/:../include/

all: HALlimn2500.o

HALlimn2500.o: $(OBJ)
	$(LD) -f HALlimn2500.o $(OBJ)

%.o: %.df ./include/*.h ../include/*.h
	$(DC) $(DCFLAGS) $< $@

%.o: %.s
	$(AS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF HALlimn2500.o
