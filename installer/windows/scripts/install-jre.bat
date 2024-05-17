@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  JRE Installer for Windows
@rem
@rem ##########################################################################
@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
@REM echo DIRNAME %DIRNAME%
if "%DIRNAME%" == "" set DIRNAME=.

set DIRNAME=%DIRNAME%..
if not exist %DIRNAME%\temp mkdir %DIRNAME%\temp
if exist %DIRNAME%\jre rmdir /S /Q %DIRNAME%\jre

set TEMP_DIR=%DIRNAME%\temp
set INSTALL_DIR=%DIRNAME%

set installer_zip=https://api.adoptium.net/v3/binary/version/jdk-21.0.3+9/windows/x64/jdk/hotspot/normal/eclipse

curl -L %installer_zip% -o %TEMP_DIR%\jre.zip
tar xvz -f %TEMP_DIR%\jre.zip -C %INSTALL_DIR%\
rename %INSTALL_DIR%\jdk-21.0.3+9 jre

rmdir /S /Q %TEMP_DIR%
