# SecondReality

## This fork

I'm trying to produce a working build close to the original, without changing anything apart
from fixing severe bugs that would prevent it from running. The source tree is supposed to
contain just the files required for the build, while everything that can be generated at
build time, will be, as opposed to carrying the pre-processed intermediate files in the
repository. Also, the pre-processing and code generation tools themselves should be built
from source.

Used build tools:

* Borland C++ 3.1
* Borland Pascal 7
* Microsoft C 6.00A (newer ones do not work)
* lzexe 0.91
* pklite 1.15

### Status

This builds a combined, packed and obfuscated executable similar to the original. A full run
of the demo works fine. However, it seems that the released source code is in an earlier
state than the final release. Non-essential features like specifying on the command line
where to start running or even prematurely exiting in response to a key press do not work as
reliably as in the real release.

### How to build

Use nmake on the top-level makefile. No sane dependency tracking is in place, so always
rebuilding from a clean working directory is the way to go. I build under Windows XP, which
seems to leak DOS memory. I have to restart the build twice to have it complete.
