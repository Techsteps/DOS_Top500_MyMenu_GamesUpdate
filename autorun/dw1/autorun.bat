:menu
@echo off
cls
echo.
echo Press 1 for Discworld w/ SoundBlaster
echo Press 2 for Discworld w/ MT-32
echo Press 3 for Discworld w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

cd DISCWLD.CD
del MDI.INI
xcopy /Y .\sb16\*.* .\
cd ..
D:
cls
@call disc
goto quit

:MT32
mt32-pi -m -v
cd DISCWLD.CD
del MDI.INI
xcopy /Y .\mt32\*.* .\
cd ..
D:
cls
@call disc
goto quit

:SC55
mt32-pi -g -v
cd DISCWLD.CD
del MDI.INI
xcopy /Y .\sc55\*.* .\
cd ..
D:
cls
@call disc
goto quit

:quit
exit
