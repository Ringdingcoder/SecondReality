.AUTODEPEND

#		*Translator Definitions*
CC = bcc +CRED.CFG
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
 tweak.obj \
 include.obj \
 includ2.obj \
 disc.obj

#		*Explicit Rules*
cred.exe: cred.cfg $(EXE_dependencies)
  $(TLINK) /v/x/c/P-/L$(LIBPATH) @&&|
c0l.obj+
main.obj+
tweak.obj+
include.obj+
includ2.obj+
disc.obj
cred
		# no map file
graphics.lib+
fp87.lib+
mathl.lib+
cl.lib
|


#		*Individual File Dependencies*
main.obj: cred.cfg main.c 

tweak.obj: cred.cfg tweak.asm 
	$(TASM) /M9 /MX /ZI /O TWEAK.ASM,TWEAK.OBJ

include.obj: cred.cfg include.asm 
	$(TASM) /M9 /MX /ZI /O INCLUDE.ASM,INCLUDE.OBJ

includ2.obj: cred.cfg includ2.asm 
	$(TASM) /M9 /MX /ZI /O INCLUD2.ASM,INCLUD2.OBJ

#		*Compiler Configuration File*
cred.cfg: cred.mak
  copy &&|
-ml
-3
-f287
-K
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
-Ff
| cred.cfg


