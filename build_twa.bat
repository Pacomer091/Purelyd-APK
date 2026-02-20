@echo off
set JAVA_HOME=C:\PROGRA~1\MICROS~2\JDK-17~1.8-H
set PATH=%JAVA_HOME%\bin;C:\Program Files\nodejs;%PATH%
cd /d "c:\Users\2008q\Desktop\Purelyd\twa-build"
call "C:\Users\2008q\AppData\Roaming\npm\bubblewrap.cmd" build
