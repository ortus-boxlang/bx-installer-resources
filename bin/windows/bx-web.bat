@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  boxlang startup script for Windows
@rem
@rem ##########################################################################
@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..
set CLASSPATH=%APP_HOME%\lib\boxlang-1.0.0-web.jar
set webroot=%CD%

if "%CD%\" == "%DIRNAME%" set webroot=%APP_HOME%\www

call bx-runner.bat %*