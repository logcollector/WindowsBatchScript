@echo off
    setlocal enableextensions disabledelayedexpansion

    set "first=1"
    (for /f "delims=" %%a in (input.txt) do (
        if not defined first ( set /p"=,%%a" ) else ( set /p"=%%a" & set "first=" )
    )) <nul >output.txt 