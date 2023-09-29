// should be kept in sync with IOiPageFrameEntryCache,
// and the page frame entries below
struct MiPageFrameEntryEvictable
	4 Next
	4 Prev
	1 EvictionFlagsB  1 EvictionTypeB  2 ReferencesI
	4 Context0
	4 Context1
	4 Context2
	4 Context3
	4 Context4
endstruct

struct MiPageFrameEntryAnonymous
	4 Next
	4 Prev
	1 EvictionFlagsB  1 EvictionTypeB  2 ReferencesI
	4 SwapPTE
	4 PrototypePTE
	4 Process        // for reclaiming DEMANDZERO private pages.
	4 VirtualAddress // for reclaiming DEMANDZERO private pages.
	4 Context3
endstruct

struct MiPageFrameEntryPageTable
	4 Next
	4 Prev
	1 EvictionFlagsB  1 EvictionTypeB  2 ReferencesI
	4 SwapPTE
	4 PrototypePTE
	4 PTECountTableEntry // overlaps Anonymous_Process but that's fine since these are both pointers and will therefore be unique with respect to eachother
	4 HoldCount          // overlaps Anonymous_VirtualAddress but that's fine since we won't ever check that for page tables
	4 PDEAddress
endstruct

struct MiPageFrameEntryWaitable
	4 EventBlock
	4 OwningThread
	1 EvictionFlagsB  1 EvictionTypeB  2 ReferencesI
	4 Context2
	4 Context3
	4 Context4
	4 Context5
	4 Context6
endstruct

struct MiPageFrameEntry
	4 R1
	4 R2
	4 R3
	4 R4
	4 R5
	4 R6
	4 R7
	4 R8
endstruct

struct MiPageFrameEntryFree
	4 Next
	4 R2
	4 R3
	4 R4
	4 R5
	4 R6
	4 R7
	4 R8
endstruct

struct MiPageFrameEntryPool
	4 ByteSize
	4 Tag
	4 ZeroIfNonPaged
	4 VirtualAddress
	4 Context4
	4 Level
	4 PoolListNext
	4 PoolListPrev
endstruct

struct MiPageFrameEntryHeap
	4 Context1
	4 Context2
	4 Context3
	4 Context4
	4 Permanent
	4 Level
	4 PoolListNext
	4 PoolListPrev
endstruct

struct MiEvictablePageEvent
	KeEvent_SIZEOF Event
	4 References
	4 WasMemoryPrivileged
endstruct

extern MiEvictablePageRemove { pfdbe -- }

extern MiPageFreeByEntry { pfdbe -- }

extern MiPoolInit { -- }

extern MiKernelStackSwapOut { thread -- }
extern MiKernelStackSwapIn { thread -- }

externptr MiPageFrameDatabase

externptr MiPageFreeListHead
externptr MiPageZeroListHead

externptr MiZeroThreadPoolPage

externptr MiInited
externptr MiPageAvailableEvent
externptr MiMustSucceedEvent
externptr MiLowMemoryEvent

externptr MiModifiedPageListHead
externptr MiModifiedPageListTail

externptr MiEvictablePageListHead
externptr MiEvictablePageListTail

externptr MiQuickPage
externptr MiZeroingPage

externptr MiPhysicalUsage

externptr MiFreeListCount
externptr MiEvictableListCount
externptr MiZeroListCount

externptr MiZeroingThreshold
externptr MiEvictableFunctionsTable

extern MiModifiedPageWriter { context1 context2 -- }

// free page count threshold that counts as "dire", meaning the working set
// trimmer will ignore working set lower limits and go woo wild.

const MMDIREPAGES           (MMNORMALTHRESH 2 +)

// default working set heuristics

externptr MiWorkingSetDefaultMinimum
externptr MiWorkingSetDefaultMaximum
externptr MiWorkingSetDefaultQuota

// a process will always be able to pin at least this many pages, no matter
// what kind of load the system is undergoing.

const MMPROCESSPINGUARANTEE 8

// default physical commit heuristics

const MMSYSTEMPROMISE         8
const MMPHYSICALCOMMITMINIMUM 64

extern MiPoolSpaceReserve { pri pagesneeded -- vaddr pteaddr ok }
extern MiPoolSpaceRelease { pages pteaddr -- }

extern MiMapQuickPage { phyaddr -- vaddr }
extern MiUnmapQuickPage { vaddr -- }

extern MiPoolPageRemove { pfdbe -- }
extern MiPoolPageInsert { pfdbe -- }


// heap stuff


extern MiPagedPoolAllocPages { bytes tag flags -- realva ok }
extern MiPagedPoolFreePages { noaccount vaddr -- }

extern MiNonpagedPoolAllocPages { bytes tag flags -- firstpfdbe ptr ok }
extern MiNonpagedPoolFreePages { noaccount ptr -- }

extern MiHeapAlloc { bytes tag flags -- ptr ok }
extern MiHeapFree { ptr -- }

const MMHEAPBLOCKSIZESHIFT 5
const MMHEAPBLOCKMINSIZE   (1 MMHEAPBLOCKSIZESHIFT <<)
const MMHEAPBLOCKSIZEMASK  (MMHEAPBLOCKMINSIZE 1 -)

const MMHEAPSWIFTMAGIC  0xC0 // least significant 4 bits MUST be zero
const MMHEAPFREEMAGIC   0xE4

const MMHEAPNORMAL      0
const MMHEAPMSL2        1
const MMHEAPMS          2
const MMHEAPPAGED       3

struct MiAllocatedHeapBlock
	1 BucketIndexB
	1 LastSizeB // in units of minimum heap block size
	1 MagicB // least significant 4 bits are used to store heap level
	1 SizeB

	4 Tag
endstruct

struct MiHeapBlock
	1 BucketIndexB
	1 LastSizeB // in units of minimum heap block size
	1 MagicB // least significant 4 bits are used to store heap level
	1 SizeB

	4 Tag

	4 NextFree
	4 PrevFree
endstruct


// process stuff


extern MiProcessSwapOut { process -- }
extern MiProcessSwapIn { process -- }

extern MiProcessChargePageTables { startva endva process -- ok }
extern MiProcessUnchargePageTables { process -- }

struct MiProcessHeader // contains things that only need to be accessed while process is swapped in
	4 WorkingSetSize
	4 WorkingSetMinimum
	4 WorkingSetMaximum
	4 WorkingSetQuota
	4 WorkingSetTrimFaultCount

	4 WorkingSetFreeListHead
	4 WorkingSetMaximumIndex
	4 WorkingSetReplacementIndex
	4 WorkingSetLastReplacedVirtual

	4 ModifiedPageCount
endstruct

const MMMODIFIEDPAGETHROTTLE 16

extern MiProcessHeaderCreate { process -- ok }
extern MiProcessHeaderDestroy { process -- }

extern MiProcessHeaderReference { process -- }
extern MiProcessHeaderDereference { process -- }


// PTE stuff


extern MiPTECreate { vaddr -- pteaddr ok }
extern MiPTEDelete { deref pteaddr -- }

extern MiPTEPin { vaddr -- ptpfdbe pteaddr }
extern MiPTEUnpin { vaddr ptpfdbe -- }

extern MiPTEInterpret { pteaddr -- phyaddr flags ok }

extern MiPTEUpdateByVirtual { phyaddr flags vaddr -- oldphyaddr oldflags }

extern MiPTEIsZero { pte -- iszero }

extern MiPTEUpdate { phyaddr flags pteaddr -- oldphyaddr oldflags }
extern MiPTESet { pte pteaddr -- }
extern MiPTESetDirty { pteaddr -- }

extern MiPTEInitializePageTable { vaddr pfdbe process -- }

struct MiPTECountTableHeader
	4 Next
	4 Number
endstruct

const MMPTECOUNTTABLESIZE (32 MiAllocatedHeapBlock_SIZEOF - MiPTECountTableHeader_SIZEOF -)
const MMPTECOUNTSPERTABLE (MMPTECOUNTTABLESIZE 2 /)

extern MiProcessPTECountGet { pri vaddr process -- ptect ok }

extern MiPageDirectoryDestroy { process -- }
extern MiPageDirectoryAlloc { process -- ok }
extern MiPageDirectoryReference { process -- }
extern MiPageDirectoryDereference { process -- }


// quota stuff


struct MiQuotaBlock
	4 References
	4 Next
	4 Prev
	4 UID

	4 PoolUsed
	4 PoolMax

	4 PagedPoolUsed
	4 PagedPoolMax

	4 VMUsed
	4 VMMax

	4 WorkingSetUsed
	4 WorkingSetMax
endstruct


// section and mapping stuff


extern MiSectionObjectDelete { object -- }

struct MiSection
	4 AnonSize
	4 QuotaBlock
endstruct

extern MiFilePrepareForMap { prot endofview offset fileobject -- ok }
extern MiFileUnprepareForMap { fileobject -- }

extern MiAnonymousPageAlloc { pteaddr pri -- pfdbe }
extern MiAnonymousPageGet { pteaddr pri -- pfdbe ok }
extern MiAnonymousPageDeleteByPTE { deletepte pteaddr vaddr process -- }
extern MiAnonymousPageReferenceByPTE { dzpte evictflag refpfdbe process pri vaddr pteaddr localpteaddr -- pfdbe ok }
extern MiAnonymousPageDelete { pfdbe -- }
extern MiSectionPageGet { localpteaddr pri sectionoffset sectionobject -- pfdbe ok }

externptr MiAnonymousEvictableFunctions


// VAD stuff


struct MiVAD
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

extern MiVADCreate { startva endva prot offset processobject mappedobject quotablock -- vad ok }

extern MiMapLock { processobject -- ok }
extern MiMapUnlock { processobject -- }

extern MiVADFind { vaddr length mustbestart processobject -- vad ok }
extern MiVADFindAndMapFreeRegion { viewsize startva fixedva pageprotection sectionoffset mappedobject processobject -- realva ok }
extern MiVADUnmap { vad processobject -- }

extern MiVADListCheckRange { startva endva process -- ok }

externptr MiVADListHead
externptr MiVADListTail

// working set stuff


extern MiWorkingSetListInitialize { process -- ok }
extern MiWorkingSetListFree { process -- }

extern MiWorkingSetTrim { dire pages process -- trimmed }
extern MiWorkingSetTrimRange { startva endva process -- }

extern MiWorkingSetSwapOut { process -- }

extern MiWorkingSetPurge { process -- }

extern MiWorkingSetRemap { flags startva endva process -- }

extern MiWorkingSetEntryInsert { vaddr wsleptr process -- }
extern MiWorkingSetEntryReserve { process -- wsli wsleptr ok }
extern MiWorkingSetEntryReplace { process -- wsli wsleptr ok }
extern MiWorkingSetEntryRemove { wsleptr process -- }
extern MiWorkingSetEntryFindByIndex { wsli process -- wsleptr ok }
extern MiWorkingSetEntryFindByVirtualAddress { vaddr process -- wsli wsleptr ok }
extern MiWorkingSetEntryFree { wsli wsleptr process -- }

extern MiWorkingSetEntryForceOut { vaddr pfdbe -- }

extern MiManageWorkingSets { -- success }


// MDL stuff


extern MiMDLZonesInit { -- }


// system page stuff


extern MiSystemPageAllocate { pri pteaddr -- pfdbe }
extern MiSystemPageFree { pteaddr -- }

extern MiSystemPageIn { vaddr pteaddr -- pfdbe }
extern MiSystemPageOut { pteaddr -- }