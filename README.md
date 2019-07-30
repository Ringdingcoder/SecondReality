# SecondReality

## This fork

I'm trying to faithfully rebuild the original, cleaning up the tree, removing and re-generating as much of the generated files as possible.

The required build tools are:

* Borland C++ 3.1
* Borland Pascal 7
* Microsoft C 6.00A

I have the suspicion that I have messed up the line endings -- DOS line endings FTW!

### Status
It builds and runs all parts. There is still a video mode setting glitch in the beginning at the flying debris. Sometimes, it shuts down right then, at least when running under DOSBox.

### How to build
Use nmake on the top-level makefile. No sane dependency tracking is in place, so always rebuilding from a clean working directory is the way to go.
