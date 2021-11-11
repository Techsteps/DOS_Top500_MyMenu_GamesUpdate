:menu
@echo off
cls 
echo.
echo Press 1 for Wing Commander II: Vengeance of the Kilrathi w/ SoundBlaster
echo Press 2 for Wing Commander II: Vengeance of the Kilrathi w/ MT-32
echo Press 3 for Secret Operations 1 w/ SoundBlaster
echo Press 4 for Secret Operations 1 w/ MT-32
echo Press 5 for Secret Operations 2 w/ SoundBlaster
echo Press 6 for Secret Operations 2 w/ MT-32
echo Press 7 to quit
echo.
choice /C:1234567 /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 6 goto so2mt
if errorlevel = 5 goto so2sb
if errorlevel = 4 goto so1mt
if errorlevel = 3 goto so1sb
if errorlevel = 2 goto wc2mt
if errorlevel = 1 goto wc2sb

:wc2sb
cd origin2
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cd ..
d:
cls
call wc2
goto menu

:wc2mt
cd origin2
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cd ..
d:
cls
call wc2
goto menu

:so1sb
cd origin2
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cd ..
d:
cls
call so1
goto menu

:so1mt
cd origin2
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cd ..
d:
cls
call so1
goto menu

:so2sb
cd origin2
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cd ..
d:
cls
call so2
goto menu

:so2mt
cd origin2
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cd ..
d:
cls
call so2
goto menu

:quit