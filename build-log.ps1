@echo off
:Start
title OnlineCmag-Timer
color 07
echo Type in an amount of time (i.e Seconds)
set /p time=
color 07
:loop
cls
ping localhost -n 2 >nul
set /a time=%time%-1
echo %time%
if %time% EQU 0 goto Timesup
goto loop
:Timesup
title Time Is Up!
ping localhost -n 2 >nul
ping localhost -n 2 >nul
cls
echo The Time is up! :-P
pause
cls
echo Thanks for using our Application.
pause
goto Web
goto Exit
:Web
start http://www.onlinecmag.com
:Exit
Exit
goto Exit
