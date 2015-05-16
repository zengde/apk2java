rmdir /s /q src
mkdir src
cd src
mkdir other
cd ../
java -jar "%~dp0lib\apktool_2.0.0rc4.jar" decode -s -f %1 -o %~dp0src\other\
