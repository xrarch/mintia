const SEMAXPERMISSION 64
const SEPERMISSIONSBITMAPSIZE (SEMAXPERMISSION 8 /)

struct SePermissions
	SEPERMISSIONSBITMAPSIZE PermissionsBitmap
endstruct

extern SeInitPhase0 { -- }
extern SeInitPhase1 { -- }

extern SePermissionsInitialize { inheritfrom permissions -- }
extern SeAmIAdmin { -- admin }
extern SeProcessGrantPermission { permission process -- ok }
extern SeProcessCheckPermission { permission process -- ok }
extern SeCheckAccess { access permission -- ok }
extern SeCheckAccessFilesystemX { access permbits owninguid owninggid process -- ok }
extern SeCheckAccessObjectUserX { access object process -- ok }
extern SeCheckAccessObjectOwnerX { object process -- ok }