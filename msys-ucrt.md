```shell
ldd  /usr/bin/gcc

        ntdll.dll => /c/Windows/SYSTEM32/ntdll.dll (0x7ff990ef0000)
        KERNEL32.DLL => /c/Windows/System32/KERNEL32.DLL (0x7ff98f3e0000)
        KERNELBASE.dll => /c/Windows/System32/KERNELBASE.dll (0x7ff98e460000)
        msys-2.0.dll => /usr/bin/msys-2.0.dll (0x180040000)


$ ldd /ucrt64/bin/gcc

        ntdll.dll => /c/Windows/SYSTEM32/ntdll.dll (0x7ff990ef0000)
        KERNEL32.DLL => /c/Windows/System32/KERNEL32.DLL (0x7ff98f3e0000)
        KERNELBASE.dll => /c/Windows/System32/KERNELBASE.dll (0x7ff98e460000)
        ucrtbase.dll => /c/Windows/System32/ucrtbase.dll (0x7ff98e820000)
        libgcc_s_seh-1.dll => /ucrt64/bin/libgcc_s_seh-1.dll (0x7ff98a680000)
        libwinpthread-1.dll => /ucrt64/bin/libwinpthread-1.dll (0x7ff982a40000)
        libwinpthread-1.dll => /ucrt64/bin/libwinpthread-1.dll (0x190000)
```

msys packages 的东西依赖 `msys-2.0.dll`, 