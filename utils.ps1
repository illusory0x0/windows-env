function Config-Env {
    param (
        [string[]] $Paths 
    )
    process {
        # set environment variable path to empty
        $env:Path = ''
        foreach ($e in $Paths) {
            $env:Path += "$e;"
        }
    }
}

function Config-MSYS2 {
    [CmdletBinding()]
    param (
        [string] $Path
    )
    process {
        Set-Variable -Name msys2_path -Value $Path -Scope Global  
        Set-Variable -Name usr_bin -Value "$msys2_path/usr/bin" -Scope Global
        Set-Variable -Name ucrt64_bin -Value "$msys2_path/ucrt64/bin/" -Scope Global
    } 
}

