extern FSVolumeNameGet { mount -- name }
extern FSVolumeInitialize { blocksize mount -- cacheblock ok }
extern FSVolumeFlush { trunc mount -- ok }

extern FSVolumeRead { length offset buf mount -- bytesread ok }
extern FSVolumeWrite { length offset buf mount -- byteswritten ok }

extern FSVolumeReadCached { length offset buf mount -- bytesread ok }
extern FSVolumeWriteCached { length offset buf mount -- byteswritten ok }

extern FSVolumeBlockRead { flags kflags offset mount -- pageframe pfdbe ok }
extern FSVolumeBlockWrite { pfdbe mount -- ok }