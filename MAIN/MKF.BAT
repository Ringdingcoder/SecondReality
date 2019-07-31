@echo off
del final.err
nmake final
if errorlevel 1 goto err
exit
:err
echo err > final.err
