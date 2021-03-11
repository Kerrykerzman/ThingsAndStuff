@echo off
title Kerry's PC Shutdown Utility version 3-11-2021
color 2e
cls
echo --------------------------------------------------------------------------------
echo Kerry's PC Shutdown Utility version 3-11-2021
echo --------------------------------------------------------------------------------
echo.
echo Shutting down in 15 seconds! 
echo .
echo Hit any key to cancel shutdown and enter menu.
shutdown /t 15 /s
pause
shutdown /a
:menu
cls
Color 0A
echo --------------------------------------------------------------------------------
echo Kerry's PC Shutdown Utility version 3-10-2021
echo --------------------------------------------------------------------------------
echo.
echo Make a Selection 
echo =================================================
echo.
echo [0] Cancel Shutdown
echo [1] Reboot
echo [2] Log Out
echo [3] Shutdown Now 
echo [4] Shutdown in 30 Minutes - 0 to cancel
echo [5] Shutdown in 90 Minutes - 0 to cancel
echo [6] Sleep (Saves energy but keeps data in RAM for quick restart)
echo [7] Hibernate (Like Sleep but saves data to hard disk)
echo [8] Exit This Menu
echo.
set /p op=Run:
if %op%==0 goto 0
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto 4
if %op%==5 goto 5
if %op%==6 goto 6
if %op%==6 goto 7
if %op%==8 goto exit
goto menu

:0
cls
shutdown /a
goto menu

:1
cls
shutdown /r /t 0
goto menu

:2
cls
shutdown /l
goto menu

:3
shutdown /t 1 /s
goto menu

:4
cls
shutdown /t 1800 /s
goto menu

:5
cls
shutdown /t 5400 /s
goto menu

:6
cls
rundll32.exe powrprof.dll,SetSuspendState 0,1,0
goto menu

:7
cls
shutdown /h
goto menu

cls
echo Command not recognized.
ping localhost -n 4 >nul
goto menu

echo Thanks for using Kerry's PC Shutdown Utility
ping 127.0.0.1 >nul
exit
