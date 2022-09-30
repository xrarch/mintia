extern FSVolumeNameGet { mount -- name }
extern FSVolumeInitialize { blocksize mount -- cacheblock ok }
extern FSVolumeUninitialize { mount -- ok }
extern FSVolumeFlush { mount -- ok }

extern FSVolumeFileCreate { size mount -- ok }

extern FSVolumeRead { length offset buf lastmode mount -- bytesread ok }
extern FSVolumeWrite { length offset buf lastmode mount -- byteswritten ok }

extern FSVolumeBlockRead { flags kflags offset mount -- pageframe pfdbe ok }
extern FSVolumeBlockWrite { pfdbe mount -- ok }

extern FSVolumeGetFCB { fcb -- volfcb }

extern FSVolumeFCBGetReadFunction { volfcb -- readfunc }
extern FSVolumeFCBGetWriteFunction { volfcb -- writefunc }