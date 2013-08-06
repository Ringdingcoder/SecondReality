.AUTODEPEND

#		*Translator Definitions*
CC = bcc +ANIM.CFG
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
 anim.obj \
 tweak.obj

#		*Explicit Rules*
anim.exe: anim.cfg $(EXE_dependencies)
  $(TLINK) /v/x/c/P-/L$(LIBPATH) @&&|
c0l.obj+
anim.obj+
tweak.obj
anim
		# no map file
graphics.lib+
fp87.lib+
mathl.lib+
cl.lib
|


#		*Individual File Dependencies*
anim.obj: anim.cfg anim.c 

tweak.obj: anim.cfg tweak.asm 
	$(TASM) /M9 /MX /ZI /O TWEAK.ASM,TWEAK.OBJ

#		*Compiler Configuration File*
anim.cfg: anim.mak
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
-vi-
-wdef
-w-rvl
-weas
-wpre
-I$(INCLUDEPATH)
-L$(LIBPATH)
-Ff
| anim.cfg


