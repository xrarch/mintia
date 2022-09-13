DYSTRIP := yes

COMPONENTS := src

OUTPUTFILE := $(SYSROOT)/OSDLL.dll

LIBS := L/dfrt/dfrt.f.o

MOVEEXPR := mintiadll text=0x1000,data=text+text_size+align,bss=data+data_size+align

INCDIR := ./headers/

include $(REPO)/Project.mk

src/$(ARCHITECTURE)/OSCallStubs.s: ./headers/OSCalls.h 
	$(SYSCALLGEN) ./headers/OSCalls.h ./src/$(ARCHITECTURE)/OSCallStubs.s NO