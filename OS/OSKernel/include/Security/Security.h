const SEUSERNAMEMAX 256
const SEMAXPERMISSION 256
const SEPERMISSIONSBITMAPSIZE (SEMAXPERMISSION 8 /)

struct SePermissions
	SEPERMISSIONSBITMAPSIZE PermissionsBitmap
endstruct

struct SeUser
	SEUSERNAMEMAX Username

	4 UID
	4 GID

	4 Next

	SePermissions_SIZEOF Permissions
endstruct

externptr SeUserListHead
externptr SeSystemUser
externptr SeUserListRwLock

extern SeInitPhase0 { -- }
extern SeInitPhase1 { -- }

extern SeUserCreate { gid uid username -- user ok }
extern SeUserGetByUsername { username userlistlocked -- user ok }
extern SeUserGetByUID { uid userlistlocked -- user ok }
extern SePermissionsInitialize { permissions -- ok }
extern SeUserGrantPermission { permission user -- ok }
extern SeUserCheckPermission { permission user -- ok }
extern SeUserCurrentGet { -- user }
extern SeUserListLock { -- ok }
extern SeUserListUnlock { -- }
extern SeAmIAdmin { -- admin }
extern SeCheckAccess { access permission -- ok }
extern SeCheckAccessFilesystem { access permbits owninguid owninggid user -- ok }
extern SeCheckAccessObjectUser { access object user -- ok }
extern SeCheckAccessObjectOwner { object user -- ok }