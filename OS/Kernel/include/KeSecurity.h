const KEUSERNAMELEN 128

const KEUSERROLESMAX 64

struct KeSecurityUser
	KEUSERNAMELEN Name

	4 UID

	4 RolePrimary

	KEUSERROLESMAX Roles

	4 ProcessListHead

	// resource limits on this user

	4 HeapMax
	4 PageFramesMax
endstruct

const KEROLENAMELEN 128

struct KeSecurityRole
	KEROLENAMELEN Name

	4 GID
endstruct