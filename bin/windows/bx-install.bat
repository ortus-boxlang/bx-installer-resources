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
CALL :NORMALIZEPATH %DIRNAME%..
set APP_HOME=%RETVAL%

echo RETVAL: %RETVAL%
echo APP_BASE_NAME: %APP_BASE_NAME%
echo APP_HOME: %APP_HOME%
echo DIRNAME: %DIRNAME%

@rem Add default JVM options here. You can also use JAVA_OPTS and BOXLANG_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

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

:NORMALIZEPATH
  SET RETVAL=%~f1
  EXIT /B

:execute
@rem Setup the command line

mkdir %APP_HOME%\temp
mkdir %APP_HOME%\modules

curl -o %APP_HOME%/boxlang-1.0.0-all.jar https://ortus-temp.s3.amazonaws.com/jericho/libs/boxlang-1.0.0-all.jar
curl -o %APP_HOME%/boxlang-1.0.0-web.jar https://ortus-temp.s3.amazonaws.com/jericho/libs/boxlang-1.0.0-web.jar

set module-esapi-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-esapi/bx-esapi-1.0.0.zip
set module-esapi-zip=bx-esapi-1.0.0.zip
set module-esapi-foldername=bx-esapi
mkdir %APP_HOME%\modules\%module-esapi-foldername%
curl %module-esapi-runtime% -o %APP_HOME%\temp\%module-esapi-zip% 
tar xvz -f %APP_HOME%\temp\%module-esapi-zip% -C %APP_HOME%\modules\%module-esapi-foldername%

set module-postgresql-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-postgresql/bx-postgresql-1.0.0.zip
set module-postgresql-zip=bx-postgresql-1.0.0.zip
set module-postgresql-foldername=bx-postgresql
mkdir %APP_HOME%\modules\%module-postgresql-foldername%
curl %module-postgresql-runtime% -o %APP_HOME%\temp\%module-postgresql-zip% 
tar xvz -f %APP_HOME%\temp\%module-postgresql-zip% -C %APP_HOME%\modules\%module-postgresql-foldername%

set module-derby-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-derby/bx-derby-1.0.0.zip
set module-derby-zip=bx-derby-1.0.0.zip
set module-derby-foldername=bx-derby
mkdir %APP_HOME%\modules\%module-derby-foldername%
curl %module-derby-runtime% -o %APP_HOME%\temp\%module-derby-zip% 
tar xvz -f %APP_HOME%\temp\%module-derby-zip% -C %APP_HOME%\modules\%module-derby-foldername%

set module-mysql-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-mysql/bx-mysql-1.0.0.zip
set module-mysql-zip=bx-mysql-1.0.0.zip
set module-mysql-foldername=bx-mysql
mkdir %APP_HOME%\modules\%module-mysql-foldername%
curl %module-mysql-runtime% -o %APP_HOME%\temp\%module-mysql-zip% 
tar xvz -f %APP_HOME%\temp\%module-mysql-zip% -C %APP_HOME%\modules\%module-mysql-foldername%

set module-mariadb-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-mariadb/bx-mariadb-1.0.0.zip
set module-mariadb-zip=bx-mariadb-1.0.0.zip
set module-mariadb-foldername=bx-mariadb
mkdir %APP_HOME%\modules\%module-mariadb-foldername%
curl %module-mariadb-runtime% -o %APP_HOME%\temp\%module-mariadb-zip% 
tar xvz -f %APP_HOME%\temp\%module-mariadb-zip% -C %APP_HOME%\modules\%module-mariadb-foldername%

set module-mssql-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-mssql/bx-mssql-1.0.0.zip
set module-mssql-zip=bx-mssql-1.0.0.zip
set module-mssql-foldername=bx-mssql
mkdir %APP_HOME%\modules\%module-mssql-foldername%
curl %module-mssql-runtime% -o %APP_HOME%\temp\%module-mssql-zip% 
tar xvz -f %APP_HOME%\temp\%module-mssql-zip% -C %APP_HOME%\modules\%module-mssql-foldername%

set module-oracle-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-oracle/bx-oracle-1.0.0.zip
set module-oracle-zip=bx-oracle-1.0.0.zip
set module-oracle-foldername=bx-oracle
mkdir %APP_HOME%\modules\%module-oracle-foldername%
curl %module-oracle-runtime% -o %APP_HOME%\temp\%module-oracle-zip% 
tar xvz -f %APP_HOME%\temp\%module-oracle-zip% -C %APP_HOME%\modules\%module-oracle-foldername%

set module-hypersql-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-hypersql/bx-hypersql-1.0.0.zip
set module-hypersql-zip=bx-hypersql-1.0.0.zip
set module-hypersql-foldername=bx-hypersql
mkdir %APP_HOME%\modules\%module-hypersql-foldername%
curl %module-hypersql-runtime% -o %APP_HOME%\temp\%module-hypersql-zip% 
tar xvz -f %APP_HOME%\temp\%module-hypersql-zip% -C %APP_HOME%\modules\%module-hypersql-foldername%


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


			


