COMPONENTS := Console \
			Executive \
			FSRTL \
			IO \
			Kernel \
			Memory \
			Object \
			Process \
			Security

LINKOPT = -nostubs

OUTPUTFILE := $(SYSROOT)/OSKernel.exe

DYLIBS := HAL.dll:$(HALBIN) Dragonfruit.dll:$(DFLIBBIN)

MOVEEXPR := base=0x80001000

INCDIR := $(HALINCDIR):./include/

include $(REPO)/Project.mk

Executive/$(ARCHITECTURE)/OSCallTrampolines.s: $(REPO)/OS/OSDLL/headers/OSCalls.h 
	$(SYSCALLGEN) $(REPO)/OS/OSDLL/headers/OSCalls.h NO ./Executive/$(ARCHITECTURE)/OSCallTrampolines.s