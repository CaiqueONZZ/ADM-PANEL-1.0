:config
::Customize Here :)
@echo off
@color b
:begin
set pingb=true
cls
echo Admin    panel 
echo [------------]  
echo [%USERNAME%]
echo.
echo.
echo 1) ECHO ANYTHING  (try again if needed)
echo 2) PING ANY SITE  (www only, try again if needed)

set /p ch=[Choose]:

if "%ch%"=="1" (
    cls
    set /p chp=[Enter]: 
    echo %chp%
    goto :endfile
) else if "%ch%"=="2" (
    cls
    set /p url=[ENTER SITE NAME ex: roblox]: 

    :cond
    if "%pingb%"=="true" (
        call :png
    ) else (
        echo ERROR, RUN FILE AGAIN
    )
    goto :endfile
) else (
    goto :err
)

:err
color c
echo Invalid option!
goto :config
pause
exit

:png
ping www.%url%.com
goto :eof

:endfile
pause>nul                        
goto begin
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::TY for using::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
