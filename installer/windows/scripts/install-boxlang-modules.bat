@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Install BoxLang Modules
@rem
@rem ##########################################################################
@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
@REM echo DIRNAME %DIRNAME%
if "%DIRNAME%" == "" set DIRNAME=.

set DIRNAME=%DIRNAME%..
if not exist %DIRNAME%\temp mkdir %DIRNAME%\temp
if exist %DIRNAME%\modules rmdir /S /Q %DIRNAME%\modules

set TEMP_DIR=%DIRNAME%\temp
set INSTALL_DIR=%DIRNAME%\modules

set module-runtime=https://downloads.ortussolutions.com/ortussolutions/boxlang-modules/bx-compat/1.0.0/bx-compat-1.0.0.zip
set module-zip=bx-compat-1.0.0.zip
set module-foldername=bx-compat
mkdir %INSTALL_DIR%\%module-foldername%
curl %module-runtime% -o %TEMP_DIR%\%module-zip%
tar xvz -f %TEMP_DIR%\%module-zip% -C %INSTALL_DIR%\%module-foldername%

set module-runtime=https://downloads.ortussolutions.com/ortussolutions/boxlang-modules/bx-derby/1.0.0/bx-derby-1.0.0.zip
set module-zip=bx-derby-1.0.0.zip
set module-foldername=bx-derby
mkdir %INSTALL_DIR%\%module-foldername%
curl %module-runtime% -o %TEMP_DIR%\%module-zip%
tar xvz -f %TEMP_DIR%\%module-zip% -C %INSTALL_DIR%\%module-foldername%

set module-runtime=https://downloads.ortussolutions.com/ortussolutions/boxlang-modules/bx-esapi/1.0.0/bx-esapi-1.0.0.zip
set module-zip=bx-esapi-1.0.0.zip
set module-foldername=bx-esapi
mkdir %INSTALL_DIR%\%module-foldername%
curl %module-runtime% -o %TEMP_DIR%\%module-zip%
tar xvz -f %TEMP_DIR%\%module-zip% -C %INSTALL_DIR%\%module-foldername%

set module-runtime=https://downloads.ortussolutions.com/ortussolutions/boxlang-modules/bx-image/1.0.0/bx-image-1.0.0.zip
set module-zip=bx-image-1.0.0.zip
set module-foldername=bx-image
mkdir %INSTALL_DIR%\%module-foldername%
curl %module-runtime% -o %TEMP_DIR%\%module-zip%
tar xvz -f %TEMP_DIR%\%module-zip% -C %INSTALL_DIR%\%module-foldername%

set module-runtime=https://downloads.ortussolutions.com/ortussolutions/boxlang-modules/bx-mail/1.0.0/bx-mail-1.0.0.zip
set module-zip=bx-mail-1.0.0.zip
set module-foldername=bx-mail
mkdir %INSTALL_DIR%\%module-foldername%
curl %module-runtime% -o %TEMP_DIR%\%module-zip%
tar xvz -f %TEMP_DIR%\%module-zip% -C %INSTALL_DIR%\%module-foldername%

set module-runtime=https://downloads.ortussolutions.com/ortussolutions/boxlang-modules/bx-mariadb/1.0.0/bx-mariadb-1.0.0.zip
set module-zip=bx-mariadb-1.0.0.zip
set module-foldername=bx-mariadb
mkdir %INSTALL_DIR%\%module-foldername%
curl %module-runtime% -o %TEMP_DIR%\%module-zip%
tar xvz -f %TEMP_DIR%\%module-zip% -C %INSTALL_DIR%\%module-foldername%

set module-runtime=https://downloads.ortussolutions.com/ortussolutions/boxlang-modules/bx-mssql/1.0.0/bx-mssql-1.0.0.zip
set module-zip=bx-mssql-1.0.0.zip
set module-foldername=bx-mssql
mkdir %INSTALL_DIR%\%module-foldername%
curl %module-runtime% -o %TEMP_DIR%\%module-zip%
tar xvz -f %TEMP_DIR%\%module-zip% -C %INSTALL_DIR%\%module-foldername%

set module-runtime=https://downloads.ortussolutions.com/ortussolutions/boxlang-modules/bx-mysql/1.0.0/bx-mysql-1.0.0.zip
set module-zip=bx-mysql-1.0.0.zip
set module-foldername=bx-mysql
mkdir %INSTALL_DIR%\%module-foldername%
curl %module-runtime% -o %TEMP_DIR%\%module-zip%
tar xvz -f %TEMP_DIR%\%module-zip% -C %INSTALL_DIR%\%module-foldername%

set module-runtime=https://downloads.ortussolutions.com/ortussolutions/boxlang-modules/bx-oracle/1.0.0/bx-oracle-1.0.0.zip
set module-zip=bx-oracle-1.0.0.zip
set module-foldername=bx-oracle
mkdir %INSTALL_DIR%\%module-foldername%
curl %module-runtime% -o %TEMP_DIR%\%module-zip%
tar xvz -f %TEMP_DIR%\%module-zip% -C %INSTALL_DIR%\%module-foldername%

set module-runtime=https://downloads.ortussolutions.com/ortussolutions/boxlang-modules/bx-postgresql/1.0.0/bx-postgresql-1.0.0.zip
set module-zip=bx-postgresql-1.0.0.zip
set module-foldername=bx-postgresql
mkdir %INSTALL_DIR%\%module-foldername%
curl %module-runtime% -o %TEMP_DIR%\%module-zip%
tar xvz -f %TEMP_DIR%\%module-zip% -C %INSTALL_DIR%\%module-foldername%

set module-runtime=https://downloads.ortussolutions.com/ortussolutions/boxlang-modules/bx-unsafe-evaluate/1.0.0/bx-unsafe-evaluate-1.0.0.zip
set module-zip=bx-unsafe-evaluate-1.0.0.zip
set module-foldername=bx-unsafe-evaluate
mkdir %INSTALL_DIR%\%module-foldername%
curl %module-runtime% -o %TEMP_DIR%\%module-zip%
tar xvz -f %TEMP_DIR%\%module-zip% -C %INSTALL_DIR%\%module-foldername%

rmdir /S /Q %TEMP_DIR%
