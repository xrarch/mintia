COMPONENTS := .

OUTPUTFILE := $(WINROOT)/bme.dll

DYLIBS += OSDLL.dll:$(OSDLLBIN)

MOVEEXPR := mintiadll text=0x70300000,data=text+text_size+align,bss=data+data_size+align

include $(REPO)/Project.mk