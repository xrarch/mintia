const VADTYPE_NORMAL 1
const VADTYPE_COW    2

struct MmVAD
	4 Next
	4 Prev

	4 Type

	4 StartVA
	4 EndVA

	4 PageProtection

	4 OffsetInSection

	4 SectionObject
endstruct

// COW pages are never shareable so they should get some special treatment here.

struct MmVADCopyOnWrite
	4 Next
	4 Prev

	4 Type

	4 StartVA
	4 EndVA

	4 PageProtection
endstruct

extern MmVADCreate { startva endva prot offset sectionobject vadtype -- vad ok }