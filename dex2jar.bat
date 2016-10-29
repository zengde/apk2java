SET dexjarcmd=dex2jar-2.1-SNAPSHOT\lib
@echo off
echo *********************************************
echo **          Convert 'apk' to 'jar'         **
echo *********************************************
set CLASSPATH=
FOR %%i IN ("%~dp0lib\%dexjarcmd%\*.jar") DO CALL "%~dp0lib\setclasspath.bat" %%i
java -Xms512m -Xmx1024m -cp %CLASSPATH% "com.googlecode.dex2jar.tools.Dex2jarCmd" %*
