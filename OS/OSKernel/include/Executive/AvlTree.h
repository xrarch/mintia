// This structure gets inlined in funky ways in a lot of places, such as VADs,
// file cache page PFDBEs, view cache buffers, and the FAT driver name cache.
// Don't change its layout without fully understanding them or you will be
// brutally executed.

const EXAVLPARENTMASK (3 ~)
const EXAVLBALANCEMASK 3

struct ExAvlTreeNode
	4 Parent // bottom 2 bits contain balance
	4 LeftChild
	4 RightChild
	4 Value
	4 EndValue // only used for some things
endstruct

struct ExAvlTree
	12 Root // enough space for a Parent, LeftChild, RightChild
endstruct

extern ExAvlTreeInitialize { tree -- }

extern ExAvlTreeInsert { node tree -- }
extern ExAvlTreeRemove { node tree -- }

extern ExAvlTreeNodeNext { node -- nextnode }
extern ExAvlTreeNodePrevious { node -- prevnode }

extern ExAvlTreeNodeFirst { tree -- first }

extern ExAvlTreeFindNodeByValue { value tree -- node }
extern ExAvlTreeFindNodeByValueRange { value tree -- node }

extern ExAvlTreeFindFirstContainingNode { value endvalue tree -- node }

extern ExAvlTreeFindEmptyRange { size tree -- value }

#ifdef DEBUGCHECKS

externptr ExAvlTreeLookupCount
externptr ExAvlTreeModifyCount
externptr ExAvlTreeDepthCount

#endif