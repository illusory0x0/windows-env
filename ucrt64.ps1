Import-Module .\profile.ps1

$env:Path = ''

$usr_bin = 'C:\app\msys64\usr\bin'
$ucrt64_bin = 'C:/app/msys64/ucrt64/bin/'


$env:Path += "$ucrt64_bin;$usr_bin;"