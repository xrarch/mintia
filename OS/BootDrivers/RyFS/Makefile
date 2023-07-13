COMPONENTS := .

LINKOPT = -nostubs

OUTPUTFILE := $(DRIVERROOT)/ryfs.sys

DYLIBS := HAL.dll:$(HALBIN) Dragonfruit.dll:$(DFLIBBIN) OSKernel.exe:$(KERNBIN)

MOVEEXPR := base=0x81100000

INCDIR := $(HALINCDIR):$(KERNINCDIR):./

include $(REPO)/Project.mk