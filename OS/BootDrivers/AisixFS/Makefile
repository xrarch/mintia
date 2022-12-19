COMPONENTS := .

LINKOPT = -nostubs

OUTPUTFILE := $(DRIVERROOT)/AisixFS.sys

DYLIBS := HAL.dll:$(HALBIN) Dragonfruit.dll:$(DFLIBBIN) OSKernel.exe:$(KERNBIN)

MOVEEXPR := base=0x80F00000

INCDIR := $(HALINCDIR):$(KERNINCDIR):./

include $(REPO)/Project.mk