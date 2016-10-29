SET apktoolcmd=apktool_2.2.1
rmdir /s /q src
mkdir src
cd src
mkdir other
cd ../
java -jar "%~dp0lib\%apktoolcmd%.jar" decode -s -f %1 -o %~dp0src\other\
