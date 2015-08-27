用emacs24开发clojure

#Windows下安装lein和emacs

##前期准备

###目录结构
假设本文件位于c:/path/to/this/dir/文件夹中，有目录结构

    README.md --本文件
    init.el --配置文件,插件的按键以及细节说明请看该文件注解
    apps/bin/ --常用的可执行文件，包括install.sh、install.bat、lein.bat(执行install.bat后生成)、wget、markdown
    others/ 字体文件、leiningen-{version}-standalone.jar、profiles.clj等


###安装字体
双击others/wqy-microhei-0.2.0-beta.tar.gz或者去[这里下载](http://sourceforge.net/projects/wqy/files/wqy-microhei/)等宽字体之后解压安装。

##将bin/文件夹添加到PATH中
以Win7为例，
计算机-右键-属性-高级系统设置-环境变量-系统变量-双击Path-在“变量值”中添加：

    c:\path\to\this\dir\apps\bin\;

##安装lein
双击

    c:/path/to/this/dir/apps/bin/install.bat

即可安装lein的依赖包。


##安装emacs
可到 http://ftp.gnu.org/pub/gnu/emacs/windows/ 下载安装包。
假设emacs安装在c:\develop\目录下，双击c:\develop\emacs\bin\addpm.exe即可添加emacs到程序启动项中。

###更改.emacs的默认路径
打开emacs，输入C-x C-f ~/.emacs <回车>，添加

    (load-file "c:/path/to/this/dir/init.el")

。


#Linux下安装lein和emacs
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


#安装clojure开发相关插件

新建或编辑文件 ~/.lein/profiles.clj（windows系统一般为c:\Users\xxx\.lein\profiles.clj），内容为

     ;;clojure开发需要插件cider/cider-nrepl。在cider模式下可开启代码自动提示功能
     ;;重构需要插件refactor-nrepl。详情请看[演示](https://github.com/clojure-emacs/clj-refactor.el/wiki)
     ;;语法检查需要依赖包acyclic/squiggly-clojure
	{:user {:plugins [[cider/cider-nrepl "0.9.1"]
	                  [refactor-nrepl "1.1.0"]]
	        :dependencies [[acyclic/squiggly-clojure "0.1.4"]]}}

可直接将others/profiles.clj复制到~/.lein/目录下。


#安装和更新emacs插件

安装emacs插件：
Alt + x install<回车键>
等几分钟后，即可安装插件成功。

更新emacs插件：
Alt + x update<回车键>

**更新之后，~/.lein/profiles.clj 文件中的相应版本号可能要改变，否则启动cider之后会提示版本不对应的错误**


#使用lein的注意事项

## jar包下载不了

https://clojars.org/ 如果需要翻墙才能访问，则需要配置lein的代理。比如我可用的代理链接为http://127.0.0.1:8580 ，

方法1：
Windows系统下，
编辑bin/lein.bat文件，在“@echo off”下，添加

        set http_proxy=127.0.0.1:8580
        set https_proxy=127.0.0.1:8580

**每次运行c:/path/to/this/dir/apps/bin/install.bat文件之后，都要重新编辑。**

在Linux系统下，
编辑~/bin/lein文件，在“#!/usr/bin/env bash”下，添加

	http_proxy=127.0.0.1:8580
	https_proxy=127.0.0.1:8580

**每次运行bin/install.sh文件之后，都要重新编辑。**

方法2：
添加环境变量 http\_proxy 和 https_proxy，值都是127.0.0.1:8580。


#如何在REPL模式下进行WEB开发

以luminus框架为例，

	lein new luminus example
	cd example
	emacs project.clj
	#之后
	#按C-c M-j键，在启动的cider-repl的shell中，输入
	(start-http-server)

即可启动web服务器。如果想停止服务器，在cider-repl的shell中输入

	(stop-http-server)

即可。

**如果没有(start-http-server)函数，说明源码中有错误。可以在命令行中输入“lein ring server”，手动启动服务，如果源码中有错误，即可看到错误信息**

#其他问题

1. 启动或者进行某个操作的时候提示“The directory ~/.emacs.d/server is unsafe”，如何修复？
解决方法：右击“~/.emacs.d/server”文件夹 => 属性 => 安全 => 高级 => 所有者 => 编辑 => 选择当前用户 => 勾选“替换子容器和对象的所有者” => 确定

