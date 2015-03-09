# 简介 #
apk反编为java，参考[https://github.com/rajivvishwa/apk2java](https://github.com/rajivvishwa/apk2java)，最后更新为2011，apk方式有了变化，已经不适用了，这次更新了apktool和dex2jar，使用方法：   
1. 把目标apk文件放在此项目根目录   
2. 在cmd中运行apk2java.bat target.apk



Introduction
------------
This project refer to [https://github.com/rajivvishwa/apk2java](https://github.com/rajivvishwa/apk2java)，original has not update since 2011 ,apk format has changed,so update to apktool2.0.0rc4 and dex2jar0.0.9.15    

This batch file decompiles an apk to its corresponding java sources. Security code review can be done on theses generated applicaion source files so as to identify any potential vulnerabilities present. 
This is not made to encourage piracy/plagiarism. 

HowTo
-----
1. Extract batch file and lib folder to C:\apk2java\ (or any folder that doesnt have space in its path)
2. Backup the target app's apk from phone to PC via ASTRO Browser
3. Keep the target apk in the root folder where batch file is present
4. Run 'apk2java.bat target.apk' in cmd
5. Result - java and resource files available in 'src'

Note: This batch just automates the sequence in which various tools are initiated and does not handle any error events. You will have to go through the cmd verbose to figure out the problem.

Requirements
------------
JRE 1.6 (Java Runtime Environment)

Tools used
-----------
Dex2jar : [http://code.google.com/p/dex2jar/   ](http://code.google.com/p/dex2jar/ )   
JAD :[ http://www.varaneckas.com/jad]( http://www.varaneckas.com/jad)   
7Zip : [http://www.7-zip.org/download.html ](http://www.7-zip.org/download.html)  
apk-tool : [http://code.google.com/p/android-apktool/   ](http://code.google.com/p/android-apktool/ )   
Android Asset Packaging Tool (aapt) : [http://developer.android.com/guide/developing/building/index.html](http://developer.android.com/guide/developing/building/index.html)    
aapt commands :[http://elinux.org/Android_aapt](http://elinux.org/Android_aapt)