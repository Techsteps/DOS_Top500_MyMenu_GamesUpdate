:menu
@echo off
cls
echo.
echo Press 1 for Ultima VII, Part 1: The Black Gate+Forge of Virtue w/ SoundBlaster
echo Press 2 for Ultima VII, Part 1: The Black Gate+Forge of Virtue w/ MT32
echo Press 3 for Ultima VII, Part 1: The Black Gate+Forge of Virtue w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

del U7.CFG
xcopy /Y .\sb16\*.* .\
cd .\STATIC
del INTRORDM.DAT
del MT32MUS.DAT
del MT32SFX.DAT
del U7INTRO.TIM
copy .\orig\*.*
cd ..
cls
@ultima7.com
goto quit
cls


:MT32
mt32-pi -m -v
del U7.CFG
xcopy /Y .\mt32\*.* .\
cd .\STATIC
del INTRORDM.DAT
del MT32MUS.DAT
del MT32SFX.DAT
del U7INTRO.TIM
copy .\orig\*.*
cd ..
cls
@ultima7.com
goto quit
cls

:SC55
mt32-pi -g -v
del U7.CFG
xcopy /Y .\sc55\*.* .\
cd .\STATIC
del INTRORDM.DAT
del MT32MUS.DAT
del MT32SFX.DAT
del U7INTRO.TIM
copy .\patch\*.*
cd ..
cls
@u7fx.com
goto quit
cls

:quit
exit
