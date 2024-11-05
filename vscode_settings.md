```json
{
    // use msys64 tool
    // replace `C:/app/msys64` with your msys2 root path 

    "clangd.path": "C:/app/msys64/ucrt64/bin/clangd.exe",
    "git.path": "C:/app/msys64/usr/bin/git.exe",
    "cmake.cmakePath": "C:/app/msys64/ucrt64/bin/cmake.exe",
    "cmakeIntelliSence.cmakePath": "C:/app/msys64/ucrt64/bin/cmake.exe",

    "terminal.integrated.profiles.windows": {
        "ucrt64": {
            "overrideName": true,
            "source": "PowerShell",
            "icon": "terminal-powershell",
            "args": [
                "-nol",
                "-noe",
                "-c",
                "C:/illu/repo/env/ucrt64.ps1"  // set your own env/ucrt64.ps1
            ]
        }
    },
    "terminal.integrated.defaultProfile.windows": "ucrt64",

}
```
