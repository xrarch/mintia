fnptr OSEnumerateEnvironmentF { entry -- ok }

extern OSFindEnvironmentVariable { name -- entry env ok }
extern OSGetEnvironmentVariable { env name bufsize -- ok }
extern OSSetEnvironmentVariable { env name -- ok }
extern OSDeleteEnvironmentVariable { name -- ok }
extern OSEnumerateEnvironment { func -- ok }