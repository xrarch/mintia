COMPONENTS := .

LINKOPT = -nostubs

OUTPUTFILE := $(DRIVERROOT)/Fat.sys

DYLIBS := HAL.dll:$(HALBIN) Dragonfruit.dll:$(DFLIBBIN) OSKernel.exe:$(KERNBIN)

MOVEEXPR := base=0x81000000

INCDIR := $(HALINCDIR):$(KERNINCDIR):./

include $(REPO)/Project.mk