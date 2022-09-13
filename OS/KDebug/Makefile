COMPONENTS := .

LINKOPT = -nostubs

OUTPUTFILE := $(SYSROOT)/KDebug.dll

DYLIBS := HAL.dll:$(HALBIN) Dragonfruit.dll:$(DFLIBBIN) OSKernel.exe:$(KERNBIN)

MOVEEXPR := base=0x80600000

INCDIR := $(HALINCDIR):$(KERNINCDIR):./include/

include $(REPO)/Project.mk