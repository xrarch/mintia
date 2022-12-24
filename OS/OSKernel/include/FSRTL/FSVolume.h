extern FSVolumeNameGet { mount -- name }
extern FSVolumeInitialize { blocksize mount -- cacheblock ok }
extern FSVolumeUninitialize { mount -- ok }
extern FSVolumeFlush { mount -- ok }

extern FSVolumeFileCreate { size mount -- ok }

extern FSVolumeRead { length offset buf lastmode mount -- bytesread ok }
extern FSVolumeWrite { length offset buf lastmode mount -- byteswritten ok }

extern FSVolumeGetFCB { fcb -- volfcb }

extern FSVolumeGetFile { mount -- volfile }

extern FSVolumeFCBGetReadFunction { volfcb -- readfunc }
extern FSVolumeFCBGetWriteFunction { volfcb -- writefunc }