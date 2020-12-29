@echo off
for /f "delims=" %%i in ('cd') do set currentDir=%%i
chdir C:\AHKScripts
rm -v *~
rm -v .*~
chdir %currentDir%
