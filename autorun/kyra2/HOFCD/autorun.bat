:menu
@echo off
cls
echo.
echo Press 1 for Legend of Kyrandia Book 2: The Hand of Fate w/ SoundBlaster
echo Press 2 for Legend of Kyrandia Book 2: The Hand of Fate w/ MT-32
echo Press 3 for Legend of Kyrandia Book 2: The Hand of Fate w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

xcopy /Y .\sb16\*.* .\ .\
cls
@HOFCD
goto quit

:MT32
mt32-pi -m -v
xcopy /Y .\mt32\*.* .\ .\
cls
@HOFCD
goto quit

:SC55
mt32-pi -g -v
xcopy /Y .\sc55\*.* .\ .\
cls
@HOFCD
goto quit

:quit
exit
