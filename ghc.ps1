$__ = Get-Date

Write-Output "msys2 haskell environment on $__"

Import-Module $(Join-Path $PSScriptRoot ".\utils.ps1")


$ghcup_path = "$($env:GHCUP_INSTALL_BASE_PREFIX)/ghcup"
$cabal_path = "$($env:GHCUP_INSTALL_BASE_PREFIX)/cabal"


# https://mirrors.ustc.edu.cn/help/ghcup.html
# https://mirrors.ustc.edu.cn/help/hackage.html
# use this tutorial to switch mirrors source
# don't forget update
# cabal update
# stack update

$stack_config = "$($env:APPDATA)/stack/config.yaml"
$cabal_config = "$cabal_path/cabal/config"
$ghcup_config = "$ghcup_path/config.yaml"

$cabal_bin = "$cabal_path/cabal/bin"
$ghcup_bin = "$ghcup_path/bin"

Config-MSYS2 "$ghcup_path/msys64"

$vscode_bin = "$($env:LOCALAPPDATA)/Programs\Microsoft VS Code\bin"

Config-Env $ucrt64_bin, $usr_bin, $vscode_bin, $cabal_bin, $ghcup_bin