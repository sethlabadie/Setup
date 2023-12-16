Get familiar with Markdown <https://www.markdownguide.org/basic-syntax/>


Bash Script which checks for Kernel Name:
```
#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform        
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under 32 bits Windows NT platform
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
fi
```

or
```
#!/bin/sh

case "$(uname -sr)" in

   Darwin*)
     echo 'Mac OS X'
     ;;

   Linux*Microsoft*)
     echo 'WSL'  # Windows Subsystem for Linux
     ;;

   Linux*)
     echo 'Linux'
     ;;

   CYGWIN*|MINGW*|MINGW32*|MSYS*)
     echo 'MS Windows'
     ;;

   # Add here more strings to compare
   # See correspondence table at the bottom of this answer

   *)
     echo 'Other OS' 
     ;;
esac
```

Table of OS's
```
Operating System                    uname -s
Mac OS X                            Darwin
Cygwin 32-bit (Win-XP)              CYGWIN_NT-5.1
Cygwin 32-bit (Win-7 32-bit)        CYGWIN_NT-6.1
Cygwin 32-bit (Win-7 64-bit)        CYGWIN_NT-6.1-WOW64
Cygwin 64-bit (Win-7 64-bit)        CYGWIN_NT-6.1
MinGW (Windows 7 32-bit)            MINGW32_NT-6.1
MinGW (Windows 10 64-bit)           MINGW64_NT-10.0
Interix (Services for UNIX)         Interix
MSYS                                MSYS_NT-6.1
MSYS2                               MSYS_NT-10.0-17763
Windows Subsystem for Linux         Linux
Android                             Linux
coreutils                           Linux
CentOS	                            Linux
Fedora                              Linux
Gentoo                              Linux
Red Hat Linux                       Linux
Linux Mint                          Linux
openSUSE                            Linux
Ubuntu                              Linux
Unity Linux                         Linux
Manjaro Linux                       Linux
OpenWRT r40420                      Linux
Debian (Linux)                      Linux
Debian (GNU Hurd)                   GNU
Debian (kFreeBSD)                   GNU/kFreeBSD
FreeBSD                             FreeBSD
NetBSD                              NetBSD
OpenBSD                             OpenBSD
DragonFlyBSD                        DragonFly
Haiku                               Haiku
NonStop                             NONSTOP_KERNEL
QNX                                 QNX
ReliantUNIX                         ReliantUNIX-Y
SINIX                               SINIX-Y
Tru64                               OSF1
Ultrix                              ULTRIX
IRIX 32 bits                        IRIX
IRIX 64 bits                        IRIX64
MINIX                               Minix
Solaris                             SunOS
UWIN (64-bit Windows 7)             UWIN-W7
SYS$UNIX:SH on OpenVMS              IS/WB
z/OS USS                            OS/390
Cray                                sn5176
(SCO) OpenServer                    SCO_SV
(SCO) System V                      SCO_SV
(SCO) UnixWare                      UnixWare
IBM AIX                             AIX
IBM i with QSH                      OS400
HP-UX                               HP-UX
```
