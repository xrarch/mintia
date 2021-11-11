struct MmVAD
	4 Next
	4 Prev

	4 NextGlobal
	4 PrevGlobal

	4 StartVA
	4 EndVA

	4 FurthestExtentMapped

	4 PageProtection

	4 OffsetInSection

	4 ProcessObject

	4 SectionObject

	4 QuotaBlock
	4 ChargeVMQuota
endstruct

extern MmVADCreate { startva endva prot offset processobject sectionobject quotablock -- vad ok }
extern MmVADListLock { processobject -- ok }
extern MmVADListTryLock { processobject -- ok }
extern MmVADListUnlock { processobject -- }
extern MmVADListIsLocked { processobject -- locked }

extern MmVADInsert { vad -- }
extern MmVADRemove { vad -- }

extern MmVADFind { vaddr length mustbestart processobject -- vad ok }
extern MmVADFindAndMapFreeRegion { viewsize startva fixedva pageprotection sectionoffset sectionobject processobject -- realva ok }
extern MmVADUnmap { vad processobject -- }

externptr MmVADListHead
externptr MmVADListTail