:menu
@echo off
cls
echo.
echo Press 1 for Descent w/ SoundBlaster
echo Press 2 for Descent w/ SoundBlaster Hi-res
echo Press 3 for Descent w/ Sound Canvas
echo Press 4 for Descent w/ Sound Canvas Hi-res
echo Press 5 to Quit
echo.
jchoice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto SC55hi
if errorlevel = 3 goto SC55
if errorlevel = 2 goto SB16hi
if errorlevel = 1 goto SB16

:SB16

del descent.cfg
xcopy /Y .\sb16\*.* .\
cls
@descent
goto quit

:SB16hi

del descent.cfg
xcopy /Y .\sb16\*.* .\
cls
@descent -640x480
goto quit

:SC55
mt32-pi -g -v
del descent.cfg
xcopy /Y .\sc55\*.* .\
cls
@descent
goto quit

:SC55hi
mt32-pi -g -v
del descent.cfg
xcopy /Y .\sc55\*.* .\
cls
@descent -640x480
goto quit

:quit
exit
