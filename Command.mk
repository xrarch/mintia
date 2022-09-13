COMPONENTS := .

OUTPUTFILE := $(BINROOT)/$(CMDNAME).exe

DYLIBS := OSDLL.dll:$(OSDLLBIN)

INCDIR := ./

include $(REPO)/Project.mk