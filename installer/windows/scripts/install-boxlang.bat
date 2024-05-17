@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Install BoxLang
@rem
@rem ##########################################################################
@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
@REM echo DIRNAME %DIRNAME%
if "%DIRNAME%" == "" set DIRNAME=.

set DIRNAME=%DIRNAME%..
if not exist %DIRNAME%\temp mkdir %DIRNAME%\temp
if not exist %DIRNAME% mkdir %DIRNAME%

set TEMP_DIR=%DIRNAME%\temp
set INSTALL_DIR=%DIRNAME%

set installer_zip=https://downloads.ortussolutions.com/ortussolutions/boxlang/boxlang-snapshot.zip

curl %installer_zip% -o %TEMP_DIR%\boxlang.zip
tar xvz -f %TEMP_DIR%\boxlang.zip -C %INSTALL_DIR%

set installer_zip=https://downloads.ortussolutions.com/ortussolutions/boxlang-runtimes/boxlang-miniserver/boxlang-miniserver-snapshot.zip

curl %installer_zip% -o %TEMP_DIR%\boxlang-miniserver.zip
tar xvz -f %TEMP_DIR%\boxlang-miniserver.zip -C %INSTALL_DIR%

rmdir /S /Q %TEMP_DIR%
