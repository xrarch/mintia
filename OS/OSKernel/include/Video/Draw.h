extern KVInit { -- }

extern KVQuery { -- w h ok }

extern KVRGB24ToNative { rgb24a -- nativecolor }

extern KVClearScreen { nativecolor -- }

extern KVFontGet { name -- font ok }

extern KVDrawFilledRectangle { nativecolor x y w h -- }
extern KVDrawEmptyRectangle { nativecolor x y w h -- }
extern KVDrawCharacter { char nativefg nativebg x y font -- }