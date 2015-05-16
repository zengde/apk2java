@echo off
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