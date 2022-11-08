# SecondReality

## This fork

I'm trying to produce a working build close to the original, without changing anything apart
from fixing severe bugs that would prevent it from running. The source tree is supposed to
contain just the files required for the build, while everything that can be generated at
build time, will be, as opposed to carrying the pre-processed intermediate files in the
repository. Also, the pre-processing and code generation tools themselves should be built
from source.

This builds a combined, packed and obfuscated executable similar to the original. A full run
of the demo works fine. However, it seems that the released source code is in an earlier
state than the final release. Non-essential features like specifying on the command line
where to start running or even prematurely exiting in response to a key press do not work as
reliably as in the real release.

Used build tools:

* Borland C++ 3.1
* Borland Pascal 7
* Microsoft C 6.00A (newer ones do not work)
* lzexe 0.91
* pklite 1.15

### Status

I believe that there are no unused source files left in the tree. A few binary executables
are still left over, of which at least some had their source code in the repo previously. In
addition, there used to be extensive tooling and original data for the visu project (the 3D
scenes). It might be possible to generate the binary data files from these, and I might try
to tackle this project in the future.

### How to build

Use nmake on the top-level makefile. No sane dependency tracking is in place, so always
rebuilding from a clean working directory is the way to go. I build under Windows XP, which
seems to leak DOS memory. I have to restart the build twice to have it complete.
