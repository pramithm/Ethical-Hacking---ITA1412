
@echo off
title Experiment 10 - Batch File Execution
color 0A
mode con: cols=80 lines=30

:MENU
cls
echo ================================================================
echo                  BATCH FILE EXECUTION
echo ================================================================
echo.
echo  Welcome to Windows Batch Scripting
echo.
echo  1. Display Welcome Message
echo  2. Display Date and Time
echo  3. Display Computer Information
echo  4. Display Network Configuration
echo  5. Perform Addition
echo  6. Display Current Directory
echo  7. List Files and Folders
echo  8. Exit
echo.
echo ================================================================
set /p choice=Enter your choice (1-8): 

if "%choice%"=="1" goto WELCOME
if "%choice%"=="2" goto DATETIME
if "%choice%"=="3" goto SYSTEM
if "%choice%"=="4" goto NETWORK
if "%choice%"=="5" goto ADDITION
if "%choice%"=="6" goto DIRECTORY
if "%choice%"=="7" goto FILES
if "%choice%"=="8" goto EXIT

echo.
echo Invalid choice! Please try again.
pause
goto MENU

:WELCOME
cls
echo ================================================================
echo                    WELCOME MESSAGE
echo ================================================================
echo.
echo Hello!
echo Welcome to Batch File Execution.
echo This program demonstrates Windows batch commands.
echo Batch files help automate repetitive tasks.
echo.
pause
goto MENU

:DATETIME
cls
echo ================================================================
echo                     DATE AND TIME
echo ================================================================
echo.
echo Current Date:
date /t
echo.
echo Current Time:
time /t
echo.
pause
goto MENU

:SYSTEM
cls
echo ================================================================
echo                   COMPUTER INFORMATION
echo ================================================================
echo.
echo Computer Name: %COMPUTERNAME%
echo User Name: %USERNAME%
echo Operating System Information:
ver
echo.
echo Processor Architecture: %PROCESSOR_ARCHITECTURE%
echo Number of Processors: %NUMBER_OF_PROCESSORS%
echo.
pause
goto MENU

:NETWORK
cls
echo ================================================================
echo                  NETWORK CONFIGURATION
echo ================================================================
echo.
ipconfig
echo.
pause
goto MENU

:ADDITION
cls
echo ================================================================
echo                    ADDITION PROGRAM
echo ================================================================
echo.
set /p num1=Enter the first whole number: 
set /p num2=Enter the second whole number: 
set /a sum=num1+num2
echo.
echo First Number  = %num1%
echo Second Number = %num2%
echo Sum            = %sum%
echo.
pause
goto MENU

:DIRECTORY
cls
echo ================================================================
echo                   CURRENT DIRECTORY
echo ================================================================
echo.
cd
echo.
pause
goto MENU

:FILES
cls
echo ================================================================
echo                 FILES AND FOLDERS
echo ================================================================
echo.
dir
echo.
pause
goto MENU

:EXIT
cls
echo ================================================================
echo Thank you for executing the batch file program!
echo Experiment 10 completed successfully.
echo ================================================================
echo.
pause
exit
