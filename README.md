用emacs24开发clojure

#Windows下安装lein和emacs

##前期准备

###目录结构
假设本文件位于C:/develop文件夹中，有目录结构

    /README.md --本文件
    /bin/ --常用的可执行文件，包括install.bat、lein.bat(执行install.bat后生成)、wget、markdown、字体文件
    /home/ --主配置文件夹，emacs的主要配置文件就放于此

###安装字体
双击bin/wqy-microhei-0.2.0-beta.tar.gz或者去[这里下载](http://sourceforge.net/projects/wqy/files/wqy-microhei/)等宽字体之后解压安装。

##将bin/文件夹添加到PATH中
以Win7为例，
计算机-右键-属性-高级系统设置-环境变量-系统变量-双击Path-在“变量值”中添加：

    C:\develop\bin;

##安装lein
双击

    C:/develop/bin/install.bat

即可自动安装最新版的lein.bat到C:/develop/bin/目录下。


##安装emacs
可到 http://ftp.gnu.org/pub/gnu/emacs/windows/ 下载安装包。
假设emacs安装在C:\develop\目录下，双击C:\develop\emacs\bin\addpm.exe即可添加emacs到程序启动项中。

###更改.emacs的默认路径
Win7下，.emacs文件位于C:\Users\xxx\AppData\Roaming\文件夹中。
打开emacs，输入C-x C-f ~/.emacs <回车>，添加

    (setq DEVELOP_HOME "C:/develop/")
    (load-file (concat DEVELOP_HOME "home/.emacs"))

之后真正的.emacs配置文件就在C:/develop/home/.emacs文件中。

**注意：如果再次输入C-x C-f ~/.emacs <回车>，则打开的是C:/develop/home/.emacs的.emacs文件。如果要编辑原来的.emacs文件，则需要用系统自带的记事本打开C:/Users/xxx/AppData/Roaming/.emacs文件。**


#Linux下安装lein和emacs

lein安装到的默认目录是 ~/bin/ ，git clone本项目后，在控制台中执行

	cd /path/to/this/dir/
	chmod a+x bin/install.sh #如需要修改默认目录，则修改LEIN_DIR的值
	./bin/install.sh


如果emacs还没有安装，则安装（以Ubuntu为例）

	sudo apt-get install -y emacs

之后将home/.emacs文件复制到用户目录中(如果有可以覆盖)


如果需要markdown预览功能，则安装

	sudo apt-get install -y markdown 


#安装clojure开发相关插件
打开home/.emacs即可看到相关的配置。
第一次启动的时候，打开会比较久，这是因为emacs会自动去下载相关的插件。

#使用lein的注意事项

## jar包下载不了

https://clojars.org/ 如果需要翻墙才能访问，则需要配置lein的代理。比如我可用的代理链接为http://127.0.0.1:8580 ，

方法1：
Windows系统下，
编辑bin/lein.bat文件，在“@echo off”下，添加

        set http_proxy=127.0.0.1:8580
        set https_proxy=127.0.0.1:8580

**每次运行C:/develop/bin/install.bat文件之后，都要重新编辑。**


在Linux系统下，
编辑~/bin/lein文件，在“#!/usr/bin/env bash”下，添加

	http_proxy=127.0.0.1:8580
	https_proxy=127.0.0.1:8580

**每次运行bin/install.sh文件之后，都要重新编辑。**

方法2：
添加环境变量 http\_proxy 和 https_proxy，值都是127.0.0.1:8580。


## .clj代码自动提示问题

代码提示功能是用company插件来启用的。在cider-mode模式下，才更好的开启代码功能。要使cider-mode能够启用，在用lein创建项目之后，需要在lein根配置文件(~/.lein/profiles.clj (windows系统.lein/文件夹在用户目录下，如C:\Users\xxx\.lein\) )或lein项目中添加cider-nrepl插件:

在lein根配置文件添加，打开~/.lein/profiles.clj文件，添加

	:plugins [[cider/cider-nrepl "0.8.2"]]

如果profiles.clj还未创建，则创建文件并添加以下内容

	{:user {:plugins [[cider/cider-nrepl "0.8.2"]]}}

或者在lein项目中添加，打开project.clj文件，添加

	:plugins [[cider/cider-nrepl "0.8.2"]]

**截止2014-12-24，cider的稳定版本是0.8.2。如果使用最新版本，则上面的“0.8.2”需要修改成“0.9.0-SNAPSHOT”，或者更高的版本(需要根据所下载的cider版本而定)**

之后用emacs打开.clj文件，执行

    M-x cider-jack-in 或者 C-c M-j

即可开启cider-mode模式，享受代码自动提示吧 :-)

#如何在REPL模式下进行WEB开发

以luminus框架为例，

	lein new luminus example
	cd example
	emacs project.clj
	#之后
	#按C-c M-j键，在启动的cider-repl的shell中，输入
	(start-server)

即可启动web服务器。如果想停止服务器，在cider-repl的shell中输入

	(stop-server)

即可。

**如果没有(start-server)函数，说明源码中有错误。可以在命令行中输入“lein ring server”，手动启动服务，如果源码中有错误，即可看到错误信息**
