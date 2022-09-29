COMPONENTS := . ./$(PLATFORM)

OUTPUTFILE := OSLoader.bin

ifeq ($(PLATFORM),LIMNstation)
	PRELIBS := LX/limn2600/rta3x/_boot.o
	LIBS := L/rta3x/rta3x.o
	MOVEEXPR := text=0x20400,data=text+text_size,bss=data+data_size
else
	LIBS := L/dfrt/dfrt.f.o
	MOVEEXPR := text=0x1000,data=text+text_size,bss=data+data_size
endif

MKBINARY := yes

INCDIR := ./

include $(REPO)/Project.mk