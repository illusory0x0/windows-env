$__ = Get-Date

Write-Output "msys2 ucrt64 environment on $__"

Import-Module $(Join-Path $PSScriptRoot ".\utils.ps1")

# msvc built python
# you also need install ms build tools
# https://visualstudio.microsoft.com/visual-cpp-build-tools/
# 1. select `Desktop development with C++`
# 2. install MSVC , such as `MSVC - VS 2022 C++ x64/x86`
# 3. install Win SDK, such `Windows 10 SDK` or `Windows 11 SDK`
# pyocd must use MSVC to build

$msvc_python_bin = 'C:\app\Python313'
$msvc_python_scripts = "$msvc_python_bin\Scripts"
New-Alias -Name 'msvc_python' -Value 'C:\app\Python313\python.exe' 
New-Alias -Name 'pyocd' -Value "$msvc_python_scripts\pyocd.exe" 


Config-MSYS2 "$($env:msys2)"

$vscode_bin = "$($env:LOCALAPPDATA)/Programs\Microsoft VS Code\bin"

Config-Env $ucrt64_bin, $usr_bin, $vscode_bin


# I not recommend use `Cmake Tools` VSC extension to run cmake command
# use pwsh or python script would be better
# because `Cmake Tools` read global environment variable from your system
# when you have many libc, some program will cause link error, and crush 

# `cmake -DCMAKE_TOOLCHAIN_FILE=~/arm-none-eabi-gcc.cmake ..`
# use this command to switch toolchain
# https://cmake.org/cmake/help/book/mastering-cmake/chapter/Cross%20Compiling%20With%20CMake.html