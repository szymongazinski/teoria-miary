@echo off
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0kompiluj.ps1" -Otworz
if errorlevel 1 pause

