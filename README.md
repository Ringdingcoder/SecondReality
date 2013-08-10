# SecondReality

## This fork

I'm currently in the process of trying to rebuild the original, cleaning up the tree, removing and re-generating as much of the generated files as possible.

Apparently, the required build tools are:

* Borland C++ 3.1
* Borland Pascal 7
* Microsoft Visual C++ 1.52

I have the suspicion that I have messed up the line endings -- DOS line endings FTW!

### Status
It builds and runs most parts, but there are still various rather severe glitches.

I'm starting to doubt the value of a DOS build, since DOSBox is not able to run even the original second.exe to completion. With Windows XP inside VirtualBox, it works even less. Out of curiosity, I'll try to run it in Windows XP on a physical machine to see if this will make a difference. Well, experiment conducted: it doesn't.

### How to build
Use nmake on the top-level makefile. No sane dependency tracking is in place, so always rebuilding from a clean working directory is the way to go.
