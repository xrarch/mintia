extern IOFileSeek { offset handle mode -- ok }

extern IOFileRead { flags length buffer filehandle -- bytesread ok }

extern IOFileReadProcess { flags length buffer fileobject process -- bytesread ok }