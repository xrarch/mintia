DYSTRIP := yes

COMPONENTS := .

OUTPUTFILE := $(SYSROOT)/OSDLL.dll

LIBS := L/dfrt/dfrt.f.o

MOVEEXPR := mintiadll text=0x1000,data=text+text_size+align,bss=data+data_size+align

include $(REPO)/Project.mk

$(ARCHITECTURE)/OSCallStubs.s: $(REPO)/OS/Headers/OSDLL/OSCalls.h
	$(SYSCALLGEN) $(REPO)/OS/Headers/OSDLL/OSCalls.h ./$(ARCHITECTURE)/OSCallStubs.s NO