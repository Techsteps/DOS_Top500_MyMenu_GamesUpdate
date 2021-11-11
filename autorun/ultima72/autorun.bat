:menu
@echo off
cls
echo.
echo Press 1 for Ultima VII, Part 2: Serpent Isle + The Silver Seed w/ SoundBlaster
echo Press 2 for Ultima VII, Part 2: Serpent Isle + The Silver Seed w/ MT32
echo Press 3 for Ultima VII, Part 2: Serpent Isle + The Silver Seed w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

del SERPENT.CFG
xcopy /Y .\sb16\*.* .\
cd STATIC
del MAINMENU.TIM
del MAINSHP.FLX
del MT32MUS.DAT
del MT32SFX.DAT
del R_SEND.XMI
del R_SINTRO.XMI
del R_VALOR.XMI
copy .\orig\*.*
cd ..
@serpent.com
goto quit
cls

:MT32
mt32-pi -m -v
del SERPENT.CFG
xcopy /Y .\mt32\*.* .\
cd STATIC
del MAINMENU.TIM
del MAINSHP.FLX
del MT32MUS.DAT
del MT32SFX.DAT
del R_SEND.XMI
del R_SINTRO.XMI
del R_VALOR.XMI
copy .\orig\*.*
cd ..
@serpent.com
goto quit
cls

:SC55
mt32-pi -g -v
del SERPENT.CFG
xcopy /Y .\sc55\*.* .\
cd STATIC
del MAINMENU.TIM
del MAINSHP.FLX
del MT32MUS.DAT
del MT32SFX.DAT
del R_SEND.XMI
del R_SINTRO.XMI
del R_VALOR.XMI
copy .\patch\*.*
cd ..
@sifx.com
goto quit
cls

:quit
exit
