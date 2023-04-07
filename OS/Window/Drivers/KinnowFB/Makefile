COMPONENTS := .

OUTPUTFILE := $(WINROOT)/kinnowfb.drv

DYLIBS += OSDLL.dll:$(OSDLLBIN)

MOVEEXPR := mintiadll text=0x71000000,data=text+text_size+align,bss=data+data_size+align

include $(REPO)/Project.mk