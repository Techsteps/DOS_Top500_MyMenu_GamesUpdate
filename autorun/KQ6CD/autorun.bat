:menu
@echo off
cls
echo.
echo Press 1 for King's Quest VI: Heir Gone Tomorrow Floppy
echo Press 2 for King's Quest VI: Heir Gone Tomorrow CD
echo Press 3 to Quit
echo.
jchoice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto CD
if errorlevel = 1 goto FLOPPY

:FLOPPY
@echo off
cls
echo.
echo Press 1 for King's Quest VI: Heir Gone Tomorrow w/ SoundBlaster
echo Press 2 for King's Quest VI: Heir Gone Tomorrow w/ MT32
echo Press 3 for King's Quest VI: Heir Gone Tomorrow w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto FSC55
if errorlevel = 2 goto FMT32
if errorlevel = 1 goto FSB16

:FSB16

cd floppy
del RESOURCE.CFG
xcopy /Y .\sb16\*.* .\
cls
@SIERRA
goto quit
cls

:FMT32
mt32-pi -m -v
cd floppy
del RESOURCE.CFG
xcopy /Y .\mt32\*.* .\
cls
@SIERRA
goto quit
cls

:FSC55
mt32-pi -g -v
cd floppy
del RESOURCE.CFG
xcopy /Y .\sc55\*.* .\
cls
@SIERRA
goto quit
cls

:CD
@echo off
cls
echo.
echo Press 1 for King's Quest VI: Heir Gone Tomorrow w/ SoundBlaster
echo Press 2 for King's Quest VI: Heir Gone Tomorrow w/ Gravis Ultrasound
echo Press 3 for King's Quest VI: Heir Gone Tomorrow w/ MT32
echo Press 4 for King's Quest VI: Heir Gone Tomorrow w/ Sound Canvas
echo Press 5 to Quit
echo.
jchoice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto SC55
if errorlevel = 3 goto MT32
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB16

:SB16

cd KQ6CD
del RESOURCE.CFG
xcopy /Y .\sb16\*.* .\
cls
@SIERRA
goto quit
cls

:GUS

cd KQ6CD
del RESOURCE.CFG
copy .\gus\*.*
cls
LH ULTRAMID -C -M100
@SIERRA
goto quit
cls

:MT32
mt32-pi -m -v
cd KQ6CD
del RESOURCE.CFG
xcopy /Y .\mt32\*.* .\
cls
@SIERRA
goto quit
cls

:SC55
mt32-pi -g -v
cd KQ6CD
del RESOURCE.CFG
xcopy /Y .\sc55\*.* .\
cls
@SIERRA
goto quit
cls

:quit
exit
