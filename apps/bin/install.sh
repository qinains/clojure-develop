#!/bin/sh

#lein默认安装路径，可更改
LEIN_DIR=~/bin

#备份之前的lein文件
mv $LEIN_DIR/lein $LEIN_DIR/lein.bk

#复制lein到LEIN_DIR目录中
cp lein $LEIN_DIR/

#给lein添加运行权限
chmod a+x $LEIN_DIR/lein


#复制leingingen-VERSION-standalone.jar包
mkdir -p ~/.lein/self-installs
cd ../../others/
cp leiningen-2.5.3-standalone.jar ~/.lein/self-installs/
