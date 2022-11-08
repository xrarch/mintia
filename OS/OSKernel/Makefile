COMPONENTS := Console \
			Executive \
			FSRTL \
			IO \
			Kernel \
			Memory \
			Object \
			Process \
			Security \
			IPC

LINKOPT = -nostubs

OUTPUTFILE := $(SYSROOT)/OSKernel.exe

DYLIBS := HAL.dll:$(HALBIN) Dragonfruit.dll:$(DFLIBBIN)

MOVEEXPR := base=0x80001000

INCDIR := $(HALINCDIR):./include/

include $(REPO)/Project.mk

Executive/$(ARCHITECTURE)/OSCallTrampolines.s: $(REPO)/OS/Headers/OSDLL/OSCalls.h 
	$(SYSCALLGEN) $(REPO)/OS/Headers/OSDLL/OSCalls.h NO ./Executive/$(ARCHITECTURE)/OSCallTrampolines.s