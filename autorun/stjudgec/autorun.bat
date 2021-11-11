:menu
@echo off
cls
echo.
echo Press 1 for Star Trek: Judgement Rites CD w/ SoundBlaster
echo Press 2 for Star Trek: Judgement Rites CD w/ MT-32
echo Press 3 for Star Trek: Judgement Rites CD w/ Sound Canvas
echo Press 4 for Star Trek: Judgement Rites Collector's CD
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CD2
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
imgmount d ".\eXoDOS\stjudgec\cd\Star Trek Judgment Rites CD-RO.cue" -t iso
cls
@trekjr
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
imgmount d ".\eXoDOS\stjudgec\cd\Star Trek Judgment Rites CD-RO.cue" -t iso
cls
@trekjr
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
imgmount d ".\eXoDOS\stjudgec\cd\Star Trek Judgment Rites CD-RO.cue" -t iso
cls
@trekjr
goto quit

:CD2
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
imgmount d ".\eXoDOS\stjudgec\cd\Star_Trek_Judgement_Rites_CD2.iso" -t iso
d:
cls
@call 2
goto quit

:quit
exit