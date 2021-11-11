:menu
@echo off
cls
echo.
echo Press 1 for FIFA International Soccer w/ SoundBlaster
echo Press 2 for FIFA International Soccer w/ MT-32
echo Press 3 for FIFA International Soccer w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cd MUSIC

cd ..
del FIFA.CFG
xcopy /Y .\sb16\*.* .\
cls
@FIFA
goto quit

:MT32
cd MUSIC
mt32-pi -m -v
cd ..
del FIFA.CFG
xcopy /Y .\mt32\*.* .\
cls
@FIFA
goto quit

:SC55
cd MUSIC
mt32-pi -g -v
cd ..
del FIFA.CFG
xcopy /Y .\sc55\*.* .\
cls
@FIFA
goto quit

:quit
exit
