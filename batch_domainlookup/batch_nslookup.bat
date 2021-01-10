@echo off
set OUTPUTFILE=output.txt
set lookup=domain.txt
del output.txt
FOR /F %%i in (%lookup%) do ( 
 nslookup %%i >> %OUTPUTFILE%
)

