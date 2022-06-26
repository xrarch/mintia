// this structure gets inlined in funky ways in a lot of places, such as VADs
// and file cache PFDBEs.
// don't change its layout without fully understanding them or you will be
// brutally executed.

struct ExSplayTreeNode
	4 Parent
	4 LeftChild
	4 RightChild
	4 Value
	4 EndValue // only used for some things
endstruct

extern ExSplayTreeInsert { insertat node rootptr -- }
extern ExSplayTreeRemove { node rootptr -- }

extern ExSplayTreeSplay { node rootptr -- }

extern ExSplayTreeNodeNext { node -- nextnode }
extern ExSplayTreeNodePrevious { node -- prevnode }

extern ExSplayTreeNodeFirst { root -- first }

extern ExSplayTreeFindNodeByValue { value rootptr -- lastnode node }
extern ExSplayTreeFindNodeByValueRange { value rootptr -- node }

extern ExSplayTreeFindFirstContainingNode { value endvalue root -- node }

extern ExSplayTreeFindEmptyRange { size root -- prevnode value }