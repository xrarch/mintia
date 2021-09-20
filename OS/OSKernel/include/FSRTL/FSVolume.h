extern FSVolumeInitialize { blocksize mount -- cacheblock ok }

extern FSVolumeRead { length bufsize offset buf mount -- bytesread ok }
extern FSVolumeWrite { length bufsize offset buf mount -- byteswritten ok }

extern FSVolumeReadCached { length bufsize offset buf mount -- bytesread ok }
extern FSVolumeWriteCached { length bufsize offset buf mount -- byteswritten ok }

extern FSVolumeBlockRead { flags offset mount -- pageframe pfdbe ok }
extern FSVolumeBlockWrite { pfdbe -- ok }