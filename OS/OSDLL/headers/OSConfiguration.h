extern OSConfigFileLoad { path create -- config ok }
extern OSConfigFileWrite { config -- ok }
extern OSConfigFileFree { config -- }

extern OSConfigGetKey { keyname sectionname config -- valueptr ok }
extern OSConfigSetKey { valueptr keyname sectionname config -- ok }
extern OSConfigDeleteKey { keyname sectionname config -- ok }

extern OSConfigCreateSection { sectionname config -- ok }
extern OSConfigDeleteSection { sectionname config -- ok }

extern OSConfigGetKeyIterator { sectionname config -- iterator ok }
extern OSConfigGetSectionIterator { config -- iterator ok }

extern OSConfigNextKey { iterator config -- keyname valueptr nextiterator ok }
extern OSConfigNextSection { iterator config -- sectionname nextiterator ok }