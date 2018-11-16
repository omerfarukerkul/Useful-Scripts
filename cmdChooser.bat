@echo off
color 8F
set var1=C:/Users/ofe/Desktop/Scripts
echo. 
echo		[1] Arka plan kirmizi yazi beyaz
echo.
echo		[2] Arka plan Siyah yazi yesil
echo.
echo		[Enter] Default
echo.
echo		0 for [Exit]
echo.
set /p selectColor=Choose a Color: 
IF "%selectColor%" == "1" (
	color CF
	GOTO Continue
)
IF "%selectColor%" == "2" (
	color 0A 
	GOTO Continue
)
IF "%selectColor%" == "" (
	color 8F
	GOTO Continue
)
IF "%selectColor%" == "0" (
	GOTO ExitProgram
)
ELSE (
	GOTO Continue
)
clear.cmd
:Continue
echo.
echo		1 [FreePort]
echo.
echo		2 [EnvironmentVariables] 
echo.
echo		3 [ProcessList] 
echo.
echo		0 for [Exit]
echo.
set /p choosenScript=Enter a Number: 
IF "%choosenScript%" == "0" (
	:ExitProgram
	echo Program is exiting...
	timeout 2 >nul
	exit
)
IF "%choosenScript%" == "1" (
	echo FreePort is running...
	call %var1%/FreePorts.bat
	GOTO Continue
)
IF "%choosenScript%" == "2" (
	echo EnvironmentVariables is running...
	call %var1%/EnvironmentVariables.bat
	GOTO Continue
)
IF "%choosenScript%" == "3" (
	echo ProcessList is running...
	call %var1%/ProcessList.bat
	GOTO Continue
)
ELSE (
	GOTO Continue
)
