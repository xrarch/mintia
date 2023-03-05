extern FSVolumeNameGet { mount -- name }
extern FSVolumeInitialize { blocksize mount -- cacheblock ok }
extern FSVolumeUninitialize { mount -- ok }
extern FSVolumeFlush { mount -- ok }

extern FSVolumeFileCreate { size mount -- ok }

extern FSVolumeGetFCBByMount { mount -- volfcb }
extern FSVolumeGetFCB { fcb -- volfcb }

extern FSVolumeGetFile { mount -- volfile }

extern FSVolumeFCBGetReadFunction { volfcb -- readfunc }
extern FSVolumeFCBGetWriteFunction { volfcb -- writefunc }

extern FSCheckAccess { access permbits owninguid owninggid mount -- ok }
extern FSFileObjectSetSecurity { uid gid object mount -- }