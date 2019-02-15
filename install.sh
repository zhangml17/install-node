#! /bin/bash

# 选择安装目录
if [ ! -d "/home/node-install" ];then
   mkdir -p /home/node-install
   cd /home/node-install
else
  cd /home/node-install
fi


# 下载node并解压
wget https://nodejs.org/dist/v10.15.1/node-v10.15.1-linux-x64.tar.gz
tar -xvf node-v10.15.1-linux-x64.tar.gz 
mv node-v10.15.1-linux-x64  nodejs
rm -rf node-v10.15.1-linux-x64.tar.gz

# 建立软链接
ln -s /home/node-install/nodejs/bin/npm  /usr/local/bin
ln -s /home/node-install/nodejs/bin/node /usr/local/bin

# 检验是否成功
node -v
