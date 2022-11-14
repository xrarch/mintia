extern OSConfigFileLoad { path create write -- config ok }
extern OSConfigFileWrite { config -- ok }
extern OSConfigFileFree { config -- }

extern OSConfigGetKey { keyname section -- key ok }
extern OSConfigGetKeyName { key -- name }
extern OSConfigGetKeyValue { key -- valueptr }
extern OSConfigSetKey { valueptr key -- ok }
extern OSConfigCreateKey { valueptr keyname section -- key ok }
extern OSConfigDeleteKey { key -- }

extern OSConfigGetSection { sectionname config -- section ok }
extern OSConfigGetSectionName { section -- name }
extern OSConfigCreateSection { sectionname config -- section ok }
extern OSConfigDeleteSection { section -- }

extern OSConfigGetKeyIterator { sectionname config -- iterator ok }
extern OSConfigGetSectionIterator { config -- iterator ok }

extern OSConfigNextKey { iterator config -- key valueptr nextiterator ok }
extern OSConfigNextSection { iterator config -- section nextiterator ok }

extern OSConfigFileGetSectionCount { config -- count }
extern OSConfigSectionGetKeyCount { section -- count }