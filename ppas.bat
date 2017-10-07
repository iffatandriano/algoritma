@echo off
SET THEFILE=d:\pascal\codelabsunikom.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  D:\pascal\rsrc.o -s   -b base.$$$ -o d:\pascal\codelabsunikom.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
