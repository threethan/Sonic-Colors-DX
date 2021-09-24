@echo off
cd /D "%~dp0"
if exist "./Guided_Install.bat" (
	rem right directory
) else (
	cd "./Resources"
)

:coda
if exist "./../Extract game to this folder/DATA/files/sonic2010_0.cpk" (
	if exist "./INSTALLED" (
		echo Sonic Colors DX is running in a separate window.
		"./Ishiiruka-Dolphin/Dolphin.exe" -be "./../Extract game to this folder/DATA/sys/main.dol"
	) else (
		echo A properly extracted game was found! Please wait while mods are installed, this shouldn't take more than a few minutes
		echo.
		"./Unpack_and_Install.bat"
		copy NUL "./INSTALLED" >NUL
		echo.
		echo Install complete!
		echo.
		echo       Would you like to create a start menu shortcut?
		echo If you change your mind later, or if you move the game files,
		echo run "Configure.bat" from the Sonic Colors DX folder.
		CHOICE /M "Create a start menu shortcut?"
		IF ERRORLEVEL 1 "./Create_Start_Menu_Shortcut.bat"
		echo.
		echo Installation complete!
		CHOICE /M "Run "Configure.bat" for more options before starting?"
		IF ERRORLEVEL 1 "./Resources/Configure.bat"
		echo.
		GOTO coda
	)
) else (
	if exist "./FIRSTRUN" (
		rem skip first run thingy
	) else (
		echo Since this is your first time running, some quick setup is required.
		echo Before you continue, make sure you have a dumped copy of Sonic Colors [If you do not, try google]
		echo and at least 4GB of free space
		echo.
		pause
		echo.
		copy NUL "./FIRSTRUN" >NUL
	)
	echo For this modpack to properly install, you must manually extract the game files through Dolphin
	echo This only need to be done once. Please perform the following steps:
	echo.
	echo  1: Put your game file [MUST BE .iso or .wbfs! nkit.iso will not work] in the indicated folder
	echo  2: Press any key to open dolphin. This window will stay open
	echo  3: Right click sonic colors from the game list and select properties
	echo  4: Switch to the filesystem tab, right click on "Disc" and click "Extract Entire Disk"
	echo  5: Choose the folder named "Extract game to this folder" and click "Select Folder"
	echo.
	pause
	echo  Close dolphin and return here when you're done!
	echo.
	"./Ishiiruka-Dolphin/Dolphin.exe"
	echo.
	if exist "./../Extract game to this folder/DATA/files/sonic2010_0.cpk" (
		goto coda
	) else (
		echo The extracted game could not be found. Read over the instructions carefully, and try again
		echo If it still does not work, ensure your copy is valid and not of another game
		echo.
		goto coda
	)
	
)