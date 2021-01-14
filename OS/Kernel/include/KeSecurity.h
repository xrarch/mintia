const KEUSERNAMELEN 128

const GID_MAX 255

const KEROLESMAX (GID_MAX 1 +)

const ROLESBITMAPSIZE (KEROLESMAX 8 /)

struct KeSecurityUser
	4 Next
	4 Prev

	KEUSERNAMELEN Name

	4 UID

	4 RolePrimary

	ROLESBITMAPSIZE RolesBitmap

	4 ProcessListHead

	// resource limits on this user

	4 HeapMax
	4 PageFramesMax
endstruct

const KEROLENAMELEN 128

const UNLIMITEDHEAP -1
const UNLIMITEDPAGEFRAME -1

struct KeSecurityRole
	4 Next
	4 Prev

	KEROLENAMELEN Name

	4 DefaultHeapMax
	4 DefaultPageFramesMax

	4 Permissions

	4 GID
endstruct

const PERMISSION_ALL 0xFFFFFFFF

const GID_SYSTEM 0

const UID_SYSTEM 0

extern KeSecurityRoleCreate { heapmax pfmax permissions gid name -- role ok }

extern KeSecurityRoleInitialize { heapmax pfmax permissions gid name role -- ok }

extern KeSecurityRoleByGID { gid -- role }

extern KeSecurityUserCreate { primaryrole uid name -- user ok }

extern KeSecurityUserInitialize { primaryrole uid name user -- ok }

extern KeSecurityUserRoleGrant { role user -- ok }

externptr KeSecurityRoles

externptr KeSecuritySystemUser

externptr KeSecurityUserListHead