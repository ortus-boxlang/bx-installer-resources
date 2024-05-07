@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  boxlang startup script for Windows
@rem
@rem ##########################################################################
@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

if "%BOXLANG_HOME%" == "" set BOXLANG_HOME=%USERPROFILE%\.boxlang
set CLASSPATH=%BOXLANG_HOME%\boxlang-1.0.0-web.jar
@REM echo CLASSPATH %CLASSPATH%

set DIRNAME=%~dp0
@REM echo DIRNAME %DIRNAME%
if "%DIRNAME%" == "" set DIRNAME=.
@REM echo DIRNAME %DIRNAME%
set APP_BASE_NAME=%~n0
@REM echo APP_BASE_NAME %APP_BASE_NAME%

set APP_HOME=%DIRNAME%..
@REM echo APP_HOME %APP_HOME%

set webroot=%CD%
@REM echo webroot %webroot%

if "%CD%\" == "%DIRNAME%" set webroot=%APP_HOME%\www
@REM echo webroot %webroot%

call bx-runner.bat %*



