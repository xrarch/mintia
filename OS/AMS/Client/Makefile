COMPONENTS := .

OUTPUTFILE := $(SYSROOT)/ams.dll

DYLIBS += OSDLL.dll:$(OSDLLBIN)

MOVEEXPR := mintiadll text=0x70000000,data=text+text_size+align,bss=data+data_size+align

INCDIR := ../include/

include $(REPO)/Project.mk