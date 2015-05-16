@echo off
echo *********************************************
echo **          Convert 'apk' to 'jar'         **
echo *********************************************
set CLASSPATH=
FOR %%i IN ("%~dp0lib\dex2jar-0.0.9.15\*.jar") DO CALL "%~dp0lib\setclasspath.bat" %%i
java -Xms512m -Xmx1024m -cp %CLASSPATH% "com.googlecode.dex2jar.tools.Dex2jarCmd" %*

cd /d %~dp0

echo *********************************************
echo **    Remove if any 'src' folder exists    **
echo *********************************************
rmdir /s /q src

echo *********************************************
echo **    Create 'src' and 'class' folders     **
echo *********************************************
mkdir src
cd src
mkdir other
cd..
mkdir class

echo *********************************************
echo **     Expand, delete the 'jar' file       **
echo *********************************************
%~dp0lib\7za.exe x *.jar -o%~dp0class -aou
del *.jar 

echo *********************************************
echo **        Decompiling class files          **
echo *********************************************
xcopy /Q /E /Y class src
for /R src %%a in (*.class) do %~dp0lib\jad.exe -d %%~dpa -o -s .java "%%a"

echo *********************************************
echo ** Delete .class files and 'class' folder  **
echo *********************************************

cd src
del /S /Q *.class
cd..
rmdir /s /q class

echo *********************************************
echo **      Extract, fix resource files        **
echo *********************************************
java -jar "%~dp0lib\apktool_2.0.0.jar" decode -s -f *.apk -o %~dp0src\other\

echo ]                                               
echo *********************************************
echo **  Process complete - Check 'src' folder  **
echo *********************************************
echo ]