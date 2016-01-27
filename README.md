#用emacs24开发clojure

##目录
- [Windows下安装lein和emacs](#windows-install-lein-emacs)
    - [前期准备](#preparation)
        - [目录结构](#folder-structure)
        - [安装字体](#install-font)
        - [将“apps/bin/”文件夹添加到PATH中](#add-to-path)
    - [安装lein](#install-lein)
    - [安装emacs](#install-emacs)
        - [更改.emacs的默认路径](#change-emacs-init)
- [Linux下安装lein和emacs](#linux-install-lein-emacs)
- [安装clojure开发相关插件](#install-clojure-profiles)
- [安装和更新emacs插件](#emacs-plugins)
    - [安装emacs插件](#install-emacs-plugins)
    - [更新emacs插件](#update-emacs-plugins)
- [使用lein的注意事项](#lein-notice)
    - [jar包下载不了](#jar-cannot-download)
    - [如何在REPL模式下进行WEB开发](#repl-web)
- [其他问题](#other-problem)

##<a name="windows-install-lein-emacs"/>Windows下安装lein和emacs

###<a name="preparation"/>前期准备

####<a name="folder-structure"/>目录结构
假设本文件位于c:/path/to/this/dir/文件夹中，有目录结构

    README.md --本文件
    init.el --配置文件,插件的按键以及细节说明请看该文件注解
    apps/bin/ --常用的可执行文件，包括install.sh、install.bat、lein.bat(执行install.bat后生成)、wget、markdown
    others/ 字体文件、leiningen-{version}-standalone.jar、profiles.clj等


####<a name="install-font"/>安装字体
双击others/wqy-microhei.ttc或者去[这里下载](http://sourceforge.net/projects/wqy/files/wqy-microhei/)等宽字体之后解压安装。

####<a name="add-to-path"/>将“apps/bin/”文件夹添加到PATH中
以Win7为例，
计算机-右键-属性-高级系统设置-环境变量-系统变量-双击Path-在“变量值”中添加：

    c:\path\to\this\dir\apps\bin\;

###<a name="install-lein"/>安装lein
双击

    c:/path/to/this/dir/apps/bin/install.bat

即可安装lein的依赖包。


###<a name="install-emacs"/>安装emacs
可到 http://ftp.gnu.org/pub/gnu/emacs/windows/ 下载安装包。
假设emacs安装在c:\develop\目录下，双击c:\develop\emacs\bin\addpm.exe即可添加emacs到程序启动项中。

####<a name="change-emacs-init"/>更改.emacs的默认路径
打开emacs，输入C-x C-f ~/.emacs <回车>，添加

    (load-file "c:/path/to/this/dir/init.el")

。


##<a name="linux-install-lein-emacs"/>Linux下安装lein和emacs
添加 ~/bin/ 到PATH。打开~/.bash_profile或者~/.profile,添加

	export PATH="$PATH:~/bin/"

到文件的末尾。

lein安装到的默认目录是 ~/bin/ ，git clone本项目后，在控制台中执行

	cd /path/to/this/dir/
	chmod a+x bin/install.sh #如需要修改默认目录，则修改LEIN_DIR的值
	./bin/install.sh


如果emacs还没有安装，则安装

	sudo apt-get install -y emacs xfonts-base ttf-wqy-microhei #Ubuntu系统
	sudo pacman -S emacs xorg-fonts-encodings wqy-microhei #ArchLinux系统


之后打开emacs，输入C-x C-f ~/.emacs <回车>，添加

    (load-file "/path/to/this/dir/init.el")

。


如果需要markdown预览功能，则安装

	sudo apt-get install -y markdown #Ubuntu系统
	sudo pacman -S markdown #ArchLinux系统


##<a name="install-clojure-profiles"/>安装clojure开发相关插件

新建或编辑文件 ~/.lein/profiles.clj（windows系统一般为c:\Users\xxx\\.lein\profiles.clj），内容为

     ;;clojure开发需要插件cider/cider-nrepl。在cider模式下可开启代码自动提示功能
     ;;重构需要插件refactor-nrepl。详情请看[演示](https://github.com/clojure-emacs/clj-refactor.el/wiki)
     ;;语法检查需要依赖包acyclic/squiggly-clojure
	{:user {:plugins [[cider/cider-nrepl "0.10.1"]
	                  [refactor-nrepl "2.0.0-SNAPSHOT"]]
	        :dependencies [[acyclic/squiggly-clojure "0.1.4"]]}}

可直接将others/profiles.clj复制到~/.lein/目录下。


##<a name="emacs-plugins"/>安装和更新emacs插件

###<a name="update-emacs-plugins"/>安装emacs插件
Alt + x install<回车键>
等几分钟后，即可安装插件成功。

####<a name="update-emacs-plugins"/>更新emacs插件
Alt + x update<回车键>

**更新之后，~/.lein/profiles.clj 文件中的相应版本号可能要改变（可参考others/profiles_snapshot.clj），否则启动cider之后会提示版本不对应的错误**


##<a name="lein-notice"/>使用lein的注意事项

###<a name="jar-cannot-download"/>jar包下载不了

https://clojars.org/ 如果需要翻墙才能访问，则需要配置lein的代理。比如我可用的代理的域名和端口号是：127.0.0.1和8580 ，

方法1：
Windows系统下，
编辑apps/bin/lein.bat文件，在“@echo off”下，添加

    set http_proxy=127.0.0.1:8580
    set https_proxy=127.0.0.1:8580

**每次运行c:/path/to/this/dir/apps/bin/install.bat文件之后，都要重新编辑。**

在Linux系统下，
编辑~/bin/lein文件，在“#!/usr/bin/env bash”下，添加

	http_proxy=127.0.0.1:8580
	https_proxy=127.0.0.1:8580

**每次运行apps/bin/install.sh文件之后，都要重新编辑。**

方法2：
添加环境变量 http_proxy 和 https_proxy，值都是127.0.0.1:8580。


###<a name="repl-web"/>如何在REPL模式下进行WEB开发

以luminus框架为例，

	lein new luminus example
	cd example
	#之后进行如下之一，即可启动web服务

	#1.用emacs打开文件
	emacs project.clj
	#按C-c M-j键，在启动的cider-repl的shell中，输入
	(start-http-server)

	#2.在命令行中输入
	lein repl
	#在启动的repl的shell中，输入
	(start-http-server)

	#3.直接启动web项目：在命令行中输入
	lein run
	#或者
	lein ring server

即可启动web服务器。如果想停止服务器，在cider-repl的shell或者repl的shell中输入

	(stop-http-server)

即可。

**如果没有(start-http-server)函数，说明源码中有错误。可以在命令行中输入“lein run”或者“lein ring server”，手动启动服务，如果源码中有错误，即可看到错误信息。**

##<a name="other-problem"/>其他问题

1. 启动或者进行某个操作的时候提示“The directory ~/.emacs.d/server is unsafe”，如何修复？
解决方法：右击“~/.emacs.d/server”文件夹 => 属性 => 安全 => 高级 => 所有者 => 编辑 => 选择当前用户 => 勾选“替换子容器和对象的所有者” => 确定

