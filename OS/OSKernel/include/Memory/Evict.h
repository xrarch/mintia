fnptr MmEvictionFunction { pfdbe -- evicted ok }

struct MmPageFrameEntryEvictable
	4 Next
	4 PFN
	4 Prev
	4 Context1
	4 EvictionFunction
	4 References
	4 Context2
	4 Context3
endstruct

extern MmEvictionWorker { context1 context2 -- }