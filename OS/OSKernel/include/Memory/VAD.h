struct MmVAD
	4 Next
	4 Prev

	4 StartVA
	4 EndVA

	4 FurthestExtentMapped

	4 PageProtection

	4 OffsetInSection

	4 SectionObject
endstruct

extern MmVADCreate { startva endva prot offset sectionobject -- vad ok }
extern MmVADListLock { processobject -- ok }
extern MmVADListUnlock { processobject -- }
extern MmVADFind { vaddr length mustbestart processobject -- vad ok }
extern MmVADFindAndMapFreeRegion { viewsize startva fixedva pageprotection sectionoffset sectionobject processobject -- realva ok }