$__ = Get-Date

Write-Output "msys2 node environment on $__"

Import-Module $(Join-Path $PSScriptRoot ".\ucrt64.ps1")
Import-Module $(Join-Path $PSScriptRoot ".\utils.ps1")

$node = "C:\app\nodejs\"

$npm = "$($env:APPDATA)/npm"

$system = "C:\Windows\system32\"

$watchexec = "C:\app\watchexec-2.2.0-x86_64-pc-windows-msvc"

$moon = "C:\Users\11378\.moon\bin\"

$env:PNPM_HOME= $npm 

Append-Env $node , $npm , $watchexec, $moon, $system