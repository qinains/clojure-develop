#lein默认安装路径，可更改
LEIN_DIR=~/bin

#删除之前的lein文件，保证下载到最新文件
rm $LEIN_DIR/lein

#下载lein文件到LEIN_DIR
wget --no-check-certificate https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -P $LEIN_DIR/

#给lein添加运行权限
chmod a+x $LEIN_DIR/lein

#下载lein依赖的leingingen-VERSION-standalone.jar包
$LEIN_DIR/lein self-install

