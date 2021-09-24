@echo off
echo -------------------------------------------------------------------------
echo   Please select the option you would like to install to Sonic Colors DX
echo -------------------------------------------------------------------------
echo   Three graphics settings are included
echo   - Low: Recommended for systems not configured for gaming
echo   - Normal: Recommended for gaming PCs
echo   - High: For PCs with capable GPUs. Only slightly prettier
echo.
echo   Additionally, you can choose to restore the "intended" level order.
echo       Colors was orignally intended to have 2 long acts and a boss, with
echo    optional bonus missions. Most original acts 1 and 2 were split and
echo    bonus missions were placed in-between.
echo       This option will rearrange levels according to their internal names,
echo    placing more substantial acts at the start of each zone, and moving
echo    the shorter "mission" acts after.
echo -------------------------------------------------------------------------
echo.
echo 1) Set graphics to "Low"
echo 2) Set graphics to "Normal"
echo 3) Set graphics to "High"
echo.
echo 4) Switch to the orignally intended level order
echo 5) Revert to the unmodified, retail level order
echo.
echo 6) Create Start Menu Shortcut
echo 7) Exit
GOTO choose

:choose
choice /c 123456

if ERRORLEVEL 7 GOTO Exit
if ERRORLEVEL 6 GOTO Shortcut
if ERRORLEVEL 5 GOTO RevertLevelOrder
if ERRORLEVEL 4 GOTO ChangeLevelOrder
if ERRORLEVEL 3 GOTO SetHigh
if ERRORLEVEL 2 GOTO SetNormal
if ERRORLEVEL 1 GOTO SetLow

echo Invalid choice
GOTO choose

:SetLow
xcopy /y /s /e "./Resources/modules/LowFX" "./Resources" > NUL
echo Graphics set to LOW
GOTO choose
:SetNormal
xcopy /y /s /e "./Resources/modules/NormalFX" "./Resources" > NUL
echo Graphics set to NORMAL
GOTO choose
:SetHigh
xcopy /y /s /e "./Resources/modules/HighFX" "./Resources" > NUL
echo Graphics set to HIGH
GOTO choose

:ChangeLevelOrder
xcopy /y /s /e "./Resources/modules/ChangeLevelOrder" "./Resources" > NUL"./SkythTools-Common/PackCpk.exe" "./sonic2010_0"
"./Resources/SkythTools-Common/PackCpk.exe" ".Resources/sonic2010_0"
move /y "./Resources/sonic2010_0.cpk" "./Extract game to this folder/DATA/files/sonic2010_0.cpk"
echo Level order set to INTENDED
GOTO choose

:RevertLevelOrder
xcopy /y /s /e "./Resources/modules/RevertLevelOrder" "./Resources" > NUL
"./Resources/SkythTools-Common/PackCpk.exe" ".Resources/sonic2010_0"
move /y "./Resources/sonic2010_0.cpk" "./Extract game to this folder/DATA/files/sonic2010_0.cpk"
echo Level order set to RETAIL
GOTO choose

:Shortcut
"./Resources/Create_Start_Menu_Shortcut.bat"
echo "Sonic Colors DX" has been added to the start menu. You will have to run this again if you move the game's files"
GOTO choose

:Exit
echo Goodbye, enjoy!