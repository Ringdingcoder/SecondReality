.AUTODEPEND

#		*Translator Definitions*
CC = bcc +PLZPART.CFG
TASM = TASM
TLIB = tlib
TLINK = tlink
LIBPATH = G:\BC\LIB
INCLUDEPATH = G:\BC\INCLUDE


#		*Implicit Rules*
.c.obj:
  $(CC) -c {$< }

.cpp.obj:
  $(CC) -c {$< }

#		*List Macros*


EXE_dependencies =  \
 asmyt.obj \
 copper.obj \
 include.obj \
 plza.obj \
 tweak.obj \
 plz.obj \
 plzfill.obj \
 vect.obj \
 main.obj \
 ..\dis\disc.obj \
 spline.obj

#		*Explicit Rules*
plzpart.exe: plzpart.cfg $(EXE_dependencies)
  $(TLINK) /v/s/c/P-/L$(LIBPATH) @&&|
c0l.obj+
asmyt.obj+
copper.obj+
include.obj+
plza.obj+
tweak.obj+
plz.obj+
plzfill.obj+
vect.obj+
main.obj+
..\dis\disc.obj+
spline.obj
plzpart,plzpart
emu.lib+
mathl.lib+
cl.lib
|


#		*Individual File Dependencies*
asmyt.obj: plzpart.cfg asmyt.asm 
	$(TASM) /M9 /MX /ZI /O ASMYT.ASM,ASMYT.OBJ

copper.obj: plzpart.cfg copper.asm 
	$(TASM) /M9 /MX /ZI /O COPPER.ASM,COPPER.OBJ

include.obj: plzpart.cfg include.asm 
	$(TASM) /M9 /MX /ZI /O INCLUDE.ASM,INCLUDE.OBJ

plza.obj: plzpart.cfg plza.asm 
	$(TASM) /M9 /MX /ZI /O PLZA.ASM,PLZA.OBJ

tweak.obj: plzpart.cfg tweak.asm 
	$(TASM) /M9 /MX /ZI /O TWEAK.ASM,TWEAK.OBJ

plz.obj: plzpart.cfg plz.c 

plzfill.obj: plzpart.cfg plzfill.c 

vect.obj: plzpart.cfg vect.c 

main.obj: plzpart.cfg main.c 

spline.obj: plzpart.cfg spline.asm 
	$(TASM) /M9 /MX /ZI /O SPLINE.ASM,SPLINE.OBJ

#		*Compiler Configuration File*
plzpart.cfg: plzpart.mak
  copy &&|
-ml
-3
-v
-vi-
-w-rvl
-weas
-wpre
-I$(INCLUDEPATH)
-L$(LIBPATH)
-Ff
| plzpart.cfg


