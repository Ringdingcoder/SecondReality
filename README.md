# SecondReality

## This fork

I wanted to turn this source dump into something that is able to run the demo in its
entirety as well as the original. What does not work, and I do not care about, is running
specific parts (by passing a number at the command line) or even quitting the demo
prematurely by pressing Esc. Additionally, the source tree is supposed to contain just the
files required for the build, while everything that can be generated at build time, will be,
as opposed to carrying the pre-processed intermediate files in the repository. Also, the
pre-processing and code generation tools themselves should be built from source.

The default branch will build an obfuscated binary similar to the one in the actual release,
while there is a separate branch with the obfuscation removed.

Used build tools:

* Borland C++ 3.1
* Borland Pascal 7
* Microsoft C 6.00A (newer ones do not work)
* lzexe 0.91 (only for obfuscation)
* pklite 1.15 (optional)

### Status

Working well, also the timing issue that causes the messed up palette at the end of the side
scroller in the beginning should be fixed.

I believe that there are no unused source files left in the tree. I'm not entirely sure if
the goal of regnerating everything has been reached, because there used to be extensive
tooling and original data for the visu project (the 3D scenes). It might be possible to
regenerate some data files from these, and I might try to tackle this project in the future,
but for now the opaque binaries will have to do.

### How to build

Use nmake on the top-level makefile. No sane dependency tracking is in place, so always
rebuilding from a clean working directory is the way to go. I build under Windows XP, which
seems to leak DOS memory, so it will abort during the first run, and needs to be restarted
in order to have it complete.
