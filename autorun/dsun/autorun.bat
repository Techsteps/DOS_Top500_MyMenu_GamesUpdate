:menu
@echo off
cls
echo.
echo Press 1 for Dark Sun: Shattered Lands w/ SoundBlaster
echo Press 2 for Dark Sun: Shattered Lands w/ MT-32
echo Press 3 for Dark Sun: Shattered Lands w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

del SOUND.CFG
xcopy /Y .\sb16\*.* .\
cls
@dsun %1 %2 %3 %4 %5 %6 %7 %8 %9
goto quit

:MT32
mt32-pi -m -v
del SOUND.CFG
xcopy /Y .\mt32\*.* .\
cls
@dsun %1 %2 %3 %4 %5 %6 %7 %8 %9
goto quit

:SC55
mt32-pi -g -v
del SOUND.CFG
xcopy /Y .\sc55\*.* .\
cls
@dsun %1 %2 %3 %4 %5 %6 %7 %8 %9
goto quit

:quit
exit
