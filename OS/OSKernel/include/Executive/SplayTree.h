// this structure gets inlined in funky ways in a lot of places.
// don't change its layout without fully understanding them or you will be
// brutally executed.

struct ExSplayTreeNode
	4 Parent
	4 LeftChild
	4 RightChild
	4 Value
	4 EndValue // only used for some things
endstruct