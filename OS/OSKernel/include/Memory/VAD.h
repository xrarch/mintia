struct MmVAD
	4 Flags

	4 FurthestExtentMapped

	4 PageProtection

	4 OffsetInSection

	4 MappedObject

	4 QuotaBlock
	4 ChargeVMQuota

	4 COWCount

	4 Parent
	4 LeftChild
	4 RightChild
	4 StartVA
	4 EndVA
endstruct

const MMVADFLAG_FILE      1
const MMVADFLAG_SECTION   2
const MMVADFLAG_NOCOMMIT  4

extern MmVADCreate { startva endva prot offset processobject mappedobject quotablock -- vad ok }

extern MmVADListLock { processobject -- ok }
extern MmVADListUnlock { processobject -- }

extern MmMapLock { processobject -- ok }
extern MmMapUnlock { processobject -- }

extern MmVADFind { vaddr length mustbestart processobject -- vad ok }
extern MmVADFindAndMapFreeRegion { viewsize startva fixedva pageprotection sectionoffset mappedobject processobject -- realva ok }
extern MmVADUnmap { vad processobject -- }

extern MmVADListCheckRange { startva endva process -- ok }

externptr MmVADListHead
externptr MmVADListTail