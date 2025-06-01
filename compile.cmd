echo off

set appName=SB-SBL Syntax Converter
set launcherName=Launcher
set outRelPath=Compiled
set compressType=0

set ahkRegistryPath="HKLM\SOFTWARE\AutoHotkey"
set ahkRegistryKey="InstallDir"
FOR /F "tokens=2* skip=2" %%a in ('reg query %ahkRegistryPath% /v %ahkRegistryKey%') do set ahkPath=%%b

del /s /q "%~dp0Compiled\*"

if not exist "%~dp0Compiled\x86" (
    mkdir "%~dp0Compiled\x86"
)
if not exist "%~dp0Compiled\x64" (
    mkdir "%~dp0Compiled\x64"
)

"%ahkPath%\Compiler\Ahk2Exe.exe" /in "%~dp0%launcherName%.ahk2" /out "%~dp0Compiled\%launcherName%.exe" /icon "%~dp0icon.png" /base "%ahkPath%\v2\AutoHotkey32.exe" /compress %compressType%
"%ahkPath%\Compiler\Ahk2Exe.exe" /in "%~dp0%appName%.ahk2" /out "%~dp0Compiled\x86\%appName%.exe" /icon "%~dp0icon.png" /base "%ahkPath%\v2\AutoHotkey32.exe" /compress %compressType%
"%ahkPath%\Compiler\Ahk2Exe.exe" /in "%~dp0%appName%.ahk2" /out "%~dp0Compiled\x64\%appName%.exe" /icon "%~dp0icon.png" /base "%ahkPath%\v2\AutoHotkey64.exe" /compress %compressType%

7z a "%~dp0Compiled\%appName%" "%~dp0Compiled\*"