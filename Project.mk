INCLUDES := $(subst :, ,$(INCDIR))
INCLUDEFILES := $(foreach incdir,$(INCLUDES),$(shell find $(incdir) -type f -name "*.h"))

SFILES := $(foreach component,$(COMPONENTS),$(wildcard $(component)/$(ARCHITECTURE)/*.s))

DFILES := $(foreach component,$(COMPONENTS),$(wildcard $(component)/*.df)) \
			$(foreach component,$(COMPONENTS),$(wildcard $(component)/$(ARCHITECTURE)/*.df))

OBJ    := $(DFILES:.df=.$(ARCHITECTURE).$(CHKFRE).o)
SOBJ   := $(SFILES:.s=.$(ARCHITECTURE).$(CHKFRE).o)

ifndef EXECFILEMODE
	EXECFILEMODE := 493
endif

FULLOUTPUTFILE = $(BUILDROOT)/$(OUTPUTFILE).$(ARCHITECTURE).$(CHKFRE)

all: $(FULLOUTPUTFILE)

$(FULLOUTPUTFILE): $(OBJ) $(SOBJ)
	$(LNK) link $(LINKOPT) $(FULLOUTPUTFILE) $(PRELIBS) $(SOBJ) $(OBJ) $(LIBS) -d $(DYLIBS)

ifdef MOVEEXPR
	$(LNK) move $(FULLOUTPUTFILE) $(MOVEEXPR)
else
	$(LNK) move $(FULLOUTPUTFILE) mintia
endif

ifdef MKBINARY
	$(LNK) binary -nobss $(FULLOUTPUTFILE)
	echo "$(OUTPUTFILE) $(FULLOUTPUTFILE)" >> $(DELTA)
else
	$(LNK) istrip $(FULLOUTPUTFILE)
	echo "$(OUTPUTFILE) $(FULLOUTPUTFILE) $(EXECFILEMODE)" >> $(DELTA)
endif

define COMPONENT_TEMPLATE

$(1)/%.$$(ARCHITECTURE).$$(CHKFRE).o: $(1)/%.df $$(INCLUDEFILES) $$(wildcard $(1)/*.h)
	$$(DFC) $$< $$@ incdir=$$(INCDIR) libdir=$$(LIBDIR)

endef

$(foreach component,$(COMPONENTS), \
	$(eval $(call COMPONENT_TEMPLATE,$(component))) \
)

%.$(ARCHITECTURE).$(CHKFRE).o: %.s
	$(ASM) $< $@

cleanup:
	rm -f ${OBJ} ${SOBJ} $(FULLOUTPUTFILE)