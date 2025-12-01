extern KVInit { -- }

extern KVQuery { -- w h ok }

extern KVI8ToNative { i8 -- nativecolor }

extern KVClearScreen { nativecolor -- }

extern KVFontGet { name -- font ok }
extern KVFontQuery { font -- width height }

extern KVDrawFilledRectangle { nativecolor x y w h -- }
extern KVDrawEmptyRectangle { nativecolor x y w h -- }
extern KVDrawCharacter { char nativefg nativebg x y font -- }