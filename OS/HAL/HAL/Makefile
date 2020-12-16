DFILES := $(shell find . -type f -name "*.df")
OBJ    := $(DFILES:.df=.o) $(SFILES:.s=.o)

DC      =  ../../../../sdk/dragonc.sh
AS      = ../../../../sdk/asm.sh
OBJTOOL = ../../../../sdk/link.sh
LD      =  $(OBJTOOL) link

DCFLAGS = incdir=../include/

all: HALhal.o

HALhal.o: $(OBJ)
	$(LD) -f HALhal.o $(OBJ)

%.o: %.df ../include/*.h
	$(DC) $(DCFLAGS) $< $@

cleanup:
	rm -f ${OBJ} *.a3x *.LOFF HALhal.o
