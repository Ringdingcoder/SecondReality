.AUTODEPEND

#		*Translator Definitions*
CC = bcc +ALKU.CFG
TASM = TASM
TLIB = tlib
TLINK = tlink
LIBPATH = ..\..\CPP\LIB
INCLUDEPATH = ..\..\CPP\INCLUDE


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

include.obj: alku.cfg include.asm fona.inc hoi.in0 hoi.in1
	$(TASM) /M9 /MX /ZI /O INCLUDE.ASM,INCLUDE.OBJ

copper.obj: alku.cfg copper.asm 
	$(TASM) /M9 /MX /ZI /O COPPER.ASM,COPPER.OBJ

fona.inc: fona.uh
	..\util\incbin fona.uh fona.tmp
	..\util2\tail < fona.tmp > $@

hoi.in0 hoi.in1: hoi.u
	..\util2\cut64kb hoi.u hoi.in

fona.uh: fona.lbm
	-..\util\lbm2u fona.lbm $@

hoi.u: hoi.lbm
	-..\util\lbm2u hoi.lbm $@

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


