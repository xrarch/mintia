COMPONENTS := .

LINKOPT = -nostubs

OUTPUTFILE := $(DRIVERROOT)/AISA,kinnowfb8,1.sys

DYLIBS := HAL.dll:$(HALBIN) Dragonfruit.dll:$(DFLIBBIN) OSKernel.exe:$(KERNBIN)

MOVEEXPR := base=0x80900000

INCDIR := $(HALINCDIR):$(KERNINCDIR)

include $(REPO)/Project.mk