extern FSVolumeNameGet { mount -- name }
extern FSVolumeInitialize { blocklog mount -- ok }
extern FSVolumeUninitialize { mount -- ok }
extern FSVolumeFlush { mount -- ok }

extern FSVolumeGetFCBByMount { mount -- volfcb }
extern FSVolumeGetFCB { fcb -- volfcb }

extern FSCheckAccess { access permbits owninguid owninggid mount -- ok }
extern FSFileObjectSetSecurity { uid gid object mount -- }