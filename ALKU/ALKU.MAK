.AUTODEPEND

#		*Translator Definitions*
CC = bcc +ALKU.CFG
TASM = TASM
TLIB = tlib
TLINK = tlink
LIBPATH = E:\u2\CPP\LIB
INCLUDEPATH = E:\u2\CPP\INCLUDE


#		*Implicit Rules*
.c.obj:
  $(CC) -c {$< }

.cpp.obj:
  $(CC) -c {$< }

#		*List Macros*


EXE_dependencies =  \
 main.obj \
 asmyt.obj \
 tweak.obj \
 include.obj \
 copper.obj \
 disc.obj

#		*Explicit Rules*
alku.exe: alku.cfg $(EXE_dependencies)
  $(TLINK) /v/x/c/P-/L$(LIBPATH) @&&|
c0l.obj+
main.obj+
asmyt.obj+
tweak.obj+
include.obj+
copper.obj+
disc.obj
alku
		# no map file
graphics.lib+
fp87.lib+
mathl.lib+
cl.lib
|
  copy $@ ..\main\data


#		*Individual File Dependencies*
main.obj: alku.cfg main.c 

asmyt.obj: alku.cfg asmyt.asm 
	$(TASM) /M9 /MX /ZI /O ASMYT.ASM,ASMYT.OBJ

tweak.obj: alku.cfg tweak.asm 
	$(TASM) /M9 /MX /ZI /O TWEAK.ASM,TWEAK.OBJ

include.obj: alku.cfg include.asm 
	$(TASM) /M9 /MX /ZI /O INCLUDE.ASM,INCLUDE.OBJ

copper.obj: alku.cfg copper.asm 
	$(TASM) /M9 /MX /ZI /O COPPER.ASM,COPPER.OBJ

#		*Compiler Configuration File*
alku.cfg: alku.mak
  copy &&|
-ml
-3
-f287
-v
-G
-O
-Og
-Oe
-Om
-Ov
-Ol
-Ob
-Op
-Oi
-Z
-k-
-rd
-vi-
-wdef
-w-rvl
-weas
-wpre
-I$(INCLUDEPATH)
-L$(LIBPATH)
| alku.cfg


