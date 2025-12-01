OUTPUTFILE := OSLoader.bin

LIBS     := L/dfrt/dfrt.f.o
MOVEEXPR := text=0x1000,data=text+text_size,bss=data+data_size
MKBINARY := yes