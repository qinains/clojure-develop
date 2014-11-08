用emacs开发clojure

#前期准备

假设本文件位于C:/develop文件夹中，有目录结构

    /README.md --本文件
    /bin/ --常用的可执行文件，包括install.bat、lein.bat(执行install.bat后生成)、wget、markdown
    /home/ --主配置文件夹，emacs的主要配置文件就放于此

#将bin/文件夹添加到PATH中
以Win7为例，
计算机-右键-属性-高级系统设置-环境变量-系统变量-双击Path-在“变量值”中添加：

    C:\develop\bin;

#安装lein
双击

    C:/develop/bin/install.bat

即可自动安装最新版的lein.bat到C:/develop/bin/目录下。


#安装emacs
假设emacs安装在C:\develop\目录下，双击C:\develop\emacs\bin\addpm.exe即可添加emacs到程序启动项中。

##更改.emacs的默认路径
Win7下，.emacs文件位于C:\Users\xxx\AppData\Roaming\文件夹中。
打开emacs，输入C-x C-f ~/.emacs <回车>，添加

    (setq DEVELOP_HOME "C:/develop/")
    (load-file (concat DEVELOP_HOME "home/.emacs"))

之后真正的.emacs配置文件就在C:/develop/home/.emacs文件中。

**注意：如果再次输入C-x C-f ~/.emacs <回车>，则打开的是C:/develop/home/.emacs的.emacs文件。如果要编辑原来的.emacs文件，则需要用系统自带的记事本打开C:/Users/xxx/AppData/Roaming/.emacs文件。**

#安装clojure开发相关插件
打开C:/develop/home/.emacs即可看到相关的配置。
第一次启动的时候，打开会比较久，这是因为emacs会自动去下载相关的插件。

#使用lein的注意事项

## jar包下载不了

https://clojars.org/ 如果需要翻墙才能访问，则需要配置lein的代理。比如我可用的代理链接为http://127.0.0.1:8580 ，

方法1：
编辑C:/develop/bin/lein.bat文件，在“@echo off”下，添加

        set http_proxy=127.0.0.1:8580
        set https_proxy=127.0.0.1:8580

**每次运行C:/develop/bin/install.bat文件之后，都要重新编辑。**

方法2：
添加环境变量 http_proxy 和 https_proxy，值都是127.0.0.1:8580。


## .clj代码自动提示问题

代码提示功能是用company插件来启用的。在cider-mode模式下，才更好的开启代码功能。所以在编辑.clj文件之前，先执行

    M-x cider-jack-in 或者 C-c M-j
