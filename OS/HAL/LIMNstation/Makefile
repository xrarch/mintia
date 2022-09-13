COMPONENTS := ../HAL .

LINKOPT = -nostubs

OUTPUTFILE := $(SYSROOT)/HAL$(PLATFORM).dll

PRELIBS := LX/limn2600/rta3x/_boot.o
LIBS := L/rta3x/cia3x.o
DYLIBS := Dragonfruit.dll:$(DFLIBBIN)

MOVEEXPR := base=0x80101000

INCDIR := $(HALINCDIR)

include $(REPO)/Project.mk