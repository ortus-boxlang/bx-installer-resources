@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  boxlang startup script for Windows
@rem
@rem ##########################################################################
@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

if "%BOXLANG_HOME%" == "" set BOXLANG_HOME=%USERPROFILE%/.boxlang
set CLASSPATH=%BOXLANG_HOME%\boxlang-1.0.0-all.jar

call bx-runner.bat %*
