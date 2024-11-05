## MSYS2 wiki

[MSYS2-Introduction](https://www.msys2.org/wiki/MSYS2-introduction/)

[What is MSYS2?](https://www.msys2.org/docs/what-is-msys2/)

[Who Is Using MSYS2?](https://www.msys2.org/docs/who-is-using-msys2/)

[Environments](https://www.msys2.org/docs/environments/)

>  If you are unsure, go with UCRT64.

> The MSYS environment contains the unix-like/cygwin based tools, lives under /usr and is special in that it is always active. All the other environments inherit from the MSYS environment and add various things on top of it.

[IDEs and Text Editors](https://www.msys2.org/docs/ides-editors/)

this doc contains how to configure terminal.integrated.profiles in VSC


## How to search package

```bash
pacman -Ss gcc  # search gcc online
pacman -Qs gcc  # search gcc in local

pacman -Ss gcc | grep ucrt # filter ucrt
pacman -Qs gcc | grep ucrt # filter ucrt 
```

## useful command 

```bash
pwd | xargs.exe cygpath.exe -m {} # get pwd and convert to windows paths
```
