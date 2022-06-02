FSTOOL     := ../../$(FST) ../../$(DISTIMAGE) offset=$(OFFSET)

sysfiles:
	$(FSTOOL) ud $(SYSFILEDIR) ./Dist.fst