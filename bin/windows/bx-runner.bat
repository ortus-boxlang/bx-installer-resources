@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  boxlang startup script for Windows
@rem
@rem ##########################################################################
@rem Set local scope for the variables with windows NT shell
@rem if "%OS%"=="Windows_NT" setlocal

set CLASSPATH = %1
echo %CLASSPATH%
set APP_HOME = %2
echo %APP_HOME%

@rem Add default JVM options here. You can also use JAVA_OPTS and BOXLANG_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

if "%CLASSPATH%" == "" goto failCannotCallDirectly




@rem Find java.exe

@rem Check to see if there is a JRE folder in the app home, and if so, use that
if exist "%APP_HOME%/jre" set JAVA_HOME=%APP_HOME%/jre

if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:failCannotCallDirectly

echo.
echo ERROR: Cannot call this file directly. Please call bx-web.bat or bx-cli.bat instead.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

@rem Execute boxlang
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %BOXLANG_OPTS%  -jar "%CLASSPATH%" %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable BOXLANG_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%BOXLANG_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega