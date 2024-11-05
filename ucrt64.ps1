$__ = Get-Date

Write-Output "msys2 ucrt64 environment on $__"


# set environment variable path to empty
$env:Path = ''

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


# https://mirrors.ustc.edu.cn/help/ghcup.html
# https://mirrors.ustc.edu.cn/help/hackage.html
# use this tutorial to switch mirrors source
# don't forget update
# cabal update
# stack update
$stack_config = "$($env:APPDATA)/stack/config.yaml"
$cabal_config = "$($env:GHCUP_INSTALL_BASE_PREFIX)/cabal/config"
$ghcup_config = "$($env:GHCUP_INSTALL_BASE_PREFIX)/ghcup/config.yaml"

# msys bin
$usr_bin = 'C:\app\msys64\usr\bin'

# ucrt64 bin 
$ucrt64_bin = 'C:/app/msys64/ucrt64/bin/'

$cabal_bin = "$($env:GHCUP_INSTALL_BASE_PREFIX)/cabal/bin"
$ghcup_bin = "$($env:GHCUP_INSTALL_BASE_PREFIX)/ghcup/bin"

$vscode_bin = "$($env:LOCALAPPDATA)/Programs\Microsoft VS Code\bin"

# all path you want to append to $env:Path
$paths = $ucrt64_bin, $usr_bin, $ghcup_bin, $cabal_bin, $vscode_bin

foreach ($e in $paths) {
    $env:Path += "$e;"
}

# I not recommend use `Cmake Tools` VSC extension to run cmake command
# use pwsh or python script would be better
# because `Cmake Tools` read global environment variable from your system
# when you have many libc, some program will cause link error, and crush 

# `cmake -DCMAKE_TOOLCHAIN_FILE=~/arm-none-eabi-gcc.cmake ..`
# use this command to switch toolchain
# https://cmake.org/cmake/help/book/mastering-cmake/chapter/Cross%20Compiling%20With%20CMake.html