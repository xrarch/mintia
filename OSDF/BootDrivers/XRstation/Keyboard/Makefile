COMPONENTS := .

LINKOPT = -nostubs

OUTPUTFILE := $(DRIVERROOT)/AISA,keyboard,2.sys

DYLIBS := HAL.dll:$(HALBIN) Dragonfruit.dll:$(DFLIBBIN) OSKernel.exe:$(KERNBIN)

MOVEEXPR := base=0x80B00000

INCDIR := $(HALINCDIR):$(KERNINCDIR)

include $(REPO)/Project.mk