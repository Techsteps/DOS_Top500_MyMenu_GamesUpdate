:menu
@echo off
cls
echo.
echo Press 1 for Command & Conquer GDI Campaign
echo Press 2 for Command & Conquer NOD Campaign
echo Press 3 for Command & Conquer Covert Operations
echo Press 4 for Command & Conquer Hidden Campaign
echo Press 5 for Network Multiplayer
echo Press 6 to Quit
echo.
echo This game contains 3 discs. The choice above loads the required
echo disc for that campaign. If you attempt to start a different
echo campaign than the one you select here, you will have to hit
echo ctrl-f4 to switch through the mounted CD's until you find the
echo right one.
echo.
choice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto network
if errorlevel = 4 goto FUNPARK
if errorlevel = 3 goto COVERT
if errorlevel = 2 goto NOD
if errorlevel = 1 goto GDI

:GDI
imgmount d ".\eXoDOS\comcon\cd\Command & Conquer CD-1.iso" ".\eXoDOS\comcon\cd\Command & Conquer CD-2.iso" ".\eXoDOS\comcon\cd\Covert Operations.cue" -t cdrom 
cls
@C&C
goto menu

:NOD
imgmount d ".\eXoDOS\comcon\cd\Command & Conquer CD-2.iso" ".\eXoDOS\comcon\cd\Command & Conquer CD-1.iso" ".\eXoDOS\comcon\cd\Covert Operations.cue" -t cdrom 
cls
@C&C
goto menu

:COVERT
imgmount d ".\eXoDOS\comcon\cd\Covert Operations.cue" ".\eXoDOS\comcon\cd\Command & Conquer CD-2.iso" ".\eXoDOS\comcon\cd\Command & Conquer CD-1.iso" -t cdrom 
cls
@C&C
goto menu

:FUNPARK
imgmount d ".\eXoDOS\comcon\cd\Command & Conquer CD-1.iso" ".\eXoDOS\comcon\cd\Command & Conquer CD-2.iso" ".\eXoDOS\comcon\cd\Covert Operations.cue" -t cdrom 
cls
@C&C funpark
goto menu

:network
imgmount d ".\eXoDOS\comcon\cd\Command & Conquer CD-1.iso" ".\eXoDOS\comcon\cd\Command & Conquer CD-2.iso" ".\eXoDOS\comcon\cd\Covert Operations.cue" -t cdrom 
cls
network

:quit
exit