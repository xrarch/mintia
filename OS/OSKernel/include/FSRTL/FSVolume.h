extern FSVolumeFlush { mount -- ok }

extern FSCheckAccess { access permbits owninguid owninggid mount -- ok }
extern FSFileObjectFill { fcb permissions uid gid fileobject mount -- }