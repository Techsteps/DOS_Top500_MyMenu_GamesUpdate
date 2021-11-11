:menu
@echo off
cls
echo.
echo Press 1 for Star Wars: TIE Fighter w/ SoundBlaster
echo Press 2 for Star Wars: TIE Fighter w/ MT-32
echo Press 3 for Star Wars: TIE Fighter w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

del IMUSE.INI
xcopy /Y .\sb16\*.* .\
cls
@TIE
goto quit

:MT32
mt32-pi -m -v
del IMUSE.INI
xcopy /Y .\mt32\*.* .\
cls
@TIE
goto quit

:SC55
mt32-pi -g -v
del IMUSE.INI
xcopy /Y .\sc55\*.* .\
cls
@TIE
goto quit

:quit
exit
