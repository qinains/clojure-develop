#lein的安装

##下载
假设两个文件都放在C:\develop\lein\目录下

[lein.bat](https://raw.githubusercontent.com/technomancy/leiningen/2.5.0/bin/lein.bat)

[leiningen-VERSION-standalone.jar](https://github.com/technomancy/leiningen/releases/download/2.5.0/leiningen-2.5.0-standalone.jar)

***注意：如果leiningen-2.5.0-standalone.jar文件下载不了，多下载几次，因为文件如果在墙外就访问不了。***

##修改lein.bat
在“@echo off”下添加

    set LEIN_JAR=%~dp0/leiningen-2.5.0-standalone.jar

##添加lein.bat到$PATH
以win8.1为例，
这台电脑-右键-属性-高级系统设置-环境变量-系统变量-双击Path-在变量值中添加：

    C:\develop\lein;


#安装emacs
假设安装在C:\develop\目录下，双击C:\develop\emacs\bin\addpm.exe即可添加emacs到程序启动项中。

##添加emacs.exe到$PATH
以win8.1为例，
这台电脑-右键-属性-高级系统设置-环境变量-系统变量-双击Path-在变量值中添加：

    C:\develop\emacs\bin;

##设置emacs的HOME目录
打开emacs，输入C-x C-f ~/.emacs <回车>，添加

    (setq home "C:/develop/home")
    (load-file (concat home "/.emacs"))
    (setenv "HOME" home)
    (setenv "PATH" home)

之后真正的配置文件就在C:/develop/home/.emacs文件中。

##安装开发相关插件
