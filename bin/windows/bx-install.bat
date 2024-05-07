@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  boxlang startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

if "%BOXLANG_HOME%" == "" set BOXLANG_HOME=%USERPROFILE%\.boxlang
set BOXLANG_MODULE_TEMP=%BOXLANG_HOME%\temp
set BOXLANG_MODULE_HOME=%BOXLANG_HOME%\modules


goto init


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

rmdir /S /Q %BOXLANG_MODULE_TEMP% %BOXLANG_MODULE_HOME%
mkdir %BOXLANG_HOME% %BOXLANG_MODULE_TEMP% %BOXLANG_MODULE_HOME%

curl -o %BOXLANG_HOME%/boxlang-1.0.0-all.jar https://ortus-temp.s3.amazonaws.com/jericho/libs/boxlang-1.0.0-all.jar
curl -o %BOXLANG_HOME%/boxlang-1.0.0-web.jar https://ortus-temp.s3.amazonaws.com/jericho/libs/boxlang-1.0.0-web.jar

set module-esapi-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-esapi/bx-esapi-1.0.0.zip
set module-esapi-zip=bx-esapi-1.0.0.zip
set module-esapi-foldername=bx-esapi
mkdir %BOXLANG_MODULE_HOME%\%module-esapi-foldername%
curl %module-esapi-runtime% -o %BOXLANG_MODULE_TEMP%\%module-esapi-zip% 
tar xvz -f %BOXLANG_MODULE_TEMP%\%module-esapi-zip% -C %BOXLANG_MODULE_HOME%\%module-esapi-foldername%\

set module-postgresql-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-postgresql/bx-postgresql-1.0.0.zip
set module-postgresql-zip=bx-postgresql-1.0.0.zip
set module-postgresql-foldername=bx-postgresql
mkdir %BOXLANG_MODULE_HOME%\%module-postgresql-foldername%
curl %module-postgresql-runtime% -o %BOXLANG_MODULE_TEMP%\%module-postgresql-zip% 
tar xvz -f %BOXLANG_MODULE_TEMP%\%module-postgresql-zip% -C %BOXLANG_MODULE_HOME%\%module-postgresql-foldername%

set module-derby-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-derby/bx-derby-1.0.0.zip
set module-derby-zip=bx-derby-1.0.0.zip
set module-derby-foldername=bx-derby
mkdir %BOXLANG_MODULE_HOME%\%module-derby-foldername%
curl %module-derby-runtime% -o %BOXLANG_MODULE_TEMP%\%module-derby-zip% 
tar xvz -f %BOXLANG_MODULE_TEMP%\%module-derby-zip% -C %BOXLANG_MODULE_HOME%\%module-derby-foldername%

set module-mysql-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-mysql/bx-mysql-1.0.0.zip
set module-mysql-zip=bx-mysql-1.0.0.zip
set module-mysql-foldername=bx-mysql
mkdir %BOXLANG_MODULE_HOME%\%module-mysql-foldername%
curl %module-mysql-runtime% -o %BOXLANG_MODULE_TEMP%\%module-mysql-zip% 
tar xvz -f %BOXLANG_MODULE_TEMP%\%module-mysql-zip% -C %BOXLANG_MODULE_HOME%\%module-mysql-foldername%

set module-mariadb-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-mariadb/bx-mariadb-1.0.0.zip
set module-mariadb-zip=bx-mariadb-1.0.0.zip
set module-mariadb-foldername=bx-mariadb
mkdir %BOXLANG_MODULE_HOME%\%module-mariadb-foldername%
curl %module-mariadb-runtime% -o %BOXLANG_MODULE_TEMP%\%module-mariadb-zip% 
tar xvz -f %BOXLANG_MODULE_TEMP%\%module-mariadb-zip% -C %BOXLANG_MODULE_HOME%\%module-mariadb-foldername%

set module-mssql-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-mssql/bx-mssql-1.0.0.zip
set module-mssql-zip=bx-mssql-1.0.0.zip
set module-mssql-foldername=bx-mssql
mkdir %BOXLANG_MODULE_HOME%\%module-mssql-foldername%
curl %module-mssql-runtime% -o %BOXLANG_MODULE_TEMP%\%module-mssql-zip% 
tar xvz -f %BOXLANG_MODULE_TEMP%\%module-mssql-zip% -C %BOXLANG_MODULE_HOME%\%module-mssql-foldername%

set module-oracle-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-oracle/bx-oracle-1.0.0.zip
set module-oracle-zip=bx-oracle-1.0.0.zip
set module-oracle-foldername=bx-oracle
mkdir %BOXLANG_MODULE_HOME%\%module-oracle-foldername%
curl %module-oracle-runtime% -o %BOXLANG_MODULE_TEMP%\%module-oracle-zip% 
tar xvz -f %BOXLANG_MODULE_TEMP%\%module-oracle-zip% -C %BOXLANG_MODULE_HOME%\%module-oracle-foldername%

set module-hypersql-runtime=https://ortus-temp.s3.amazonaws.com/boxlang-modules/bx-hypersql/bx-hypersql-1.0.0.zip
set module-hypersql-zip=bx-hypersql-1.0.0.zip
set module-hypersql-foldername=bx-hypersql
mkdir %BOXLANG_MODULE_HOME%\%module-hypersql-foldername%
curl %module-hypersql-runtime% -o %BOXLANG_MODULE_TEMP%\%module-hypersql-zip% 
tar xvz -f %BOXLANG_MODULE_TEMP%\%module-hypersql-zip% -C %BOXLANG_MODULE_HOME%\%module-hypersql-foldername%


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


