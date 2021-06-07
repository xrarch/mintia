const SEUSERNAMEMAX 256

struct SeUser
	SEUSERNAMEMAX Username

	4 UID
	4 GID

	4 Next

	32 PermissionsBitmap
endstruct

const SEMAXPERMISSION 256

externptr SeUserListHead

externptr SeSystemUserObject

extern SeInitPhase0 { -- }

extern SeInitPhase1 { -- }