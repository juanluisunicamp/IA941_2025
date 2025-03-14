@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  app startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and APP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\app.jar;%APP_HOME%\lib\cst-0f94e6c.jar;%APP_HOME%\lib\guava-31.1-jre.jar;%APP_HOME%\lib\WS3DProxy-0.0.2.jar;%APP_HOME%\lib\json-20200518.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.12.0.jar;%APP_HOME%\lib\error_prone_annotations-2.11.0.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\gson-2.7.jar;%APP_HOME%\lib\compiler-2.3.0.jar;%APP_HOME%\lib\logback-classic-1.0.11.jar;%APP_HOME%\lib\slf4j-api-1.7.14.jar;%APP_HOME%\lib\jfreechart-1.0.19.jar;%APP_HOME%\lib\jung-visualization-2.0.1.jar;%APP_HOME%\lib\jung-algorithms-2.0.1.jar;%APP_HOME%\lib\jung-graph-impl-2.0.1.jar;%APP_HOME%\lib\opt4j-tutorial-3.1.jar;%APP_HOME%\lib\opt4j-optimizers-3.1.jar;%APP_HOME%\lib\opt4j-viewer-3.1.jar;%APP_HOME%\lib\opt4j-benchmarks-3.1.jar;%APP_HOME%\lib\opt4j-operators-3.1.jar;%APP_HOME%\lib\opt4j-satdecoding-3.1.jar;%APP_HOME%\lib\opt4j-core-3.1.jar;%APP_HOME%\lib\antlr4-runtime-4.5.3.jar;%APP_HOME%\lib\guice-multibindings-3.0.jar;%APP_HOME%\lib\guice-3.0.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\cglib-2.2.1-v20090111.jar;%APP_HOME%\lib\asm-3.1.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\jung-api-2.0.1.jar;%APP_HOME%\lib\org.ow2.sat4j.pb-2.3.3.jar;%APP_HOME%\lib\org.ow2.sat4j.core-2.3.3.jar;%APP_HOME%\lib\org.ow2.sat4j.core-2.3.3-tests.jar;%APP_HOME%\lib\commons-beanutils-core-1.8.0.jar;%APP_HOME%\lib\commons-math3-3.0.jar;%APP_HOME%\lib\dnsjava-2.1.9.jar;%APP_HOME%\lib\annotations-12.0.jar;%APP_HOME%\lib\jcommon-1.0.23.jar;%APP_HOME%\lib\collections-generic-4.01.jar;%APP_HOME%\lib\colt-1.2.0.jar;%APP_HOME%\lib\logback-core-1.0.11.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar;%APP_HOME%\lib\concurrent-1.3.4.jar


@rem Execute app
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %APP_OPTS%  -classpath "%CLASSPATH%" WS3DApp.App %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable APP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%APP_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
