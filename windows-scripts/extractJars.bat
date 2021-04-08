@echo off
for /f %%f in ('dir /b .\*.jar') do 7z x -o%%f-extracted %%f
