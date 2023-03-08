extern FSVolumeFlush { mount -- ok }

extern FSCheckAccess { access permbits owninguid owninggid mount -- ok }
extern FSFileObjectSetSecurity { uid gid object mount -- }