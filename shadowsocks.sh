#!/bin/sh
echo "安装pip"
sudo yum install python-setuptools && easy_install pip

echo "使用pip安装shadowsocks"
sudo pip install shadowsocks

echo "删除已有配置文件"
rm -rf /etc/shadowsocks.json

echo "创建并写入配置文件"
echo "{
    \"server\":\"0.0.0.0\",
    \"local_address\": \"127.0.0.1\",
    \"local_port\":1080,
    \"port_password\": {
         \"8391\": \"8391\",
         \"8392\": \"8392\",
         \"8393\": \"8393\",
         \"8394\": \"8394\"
    },
    \"timeout\":300,
    \"method\":\"aes-256-cfb\",
    \"fast_open\": false
}" >>/etc/shadowsocks.json

echo "设置开机启动shadowsocks"
echo "ssserver -c /etc/shadowsocks.json -d start" >> /etc/rc.local

echo "启动shadowsocks"
ssserver -c /etc/shadowsocks.json -d start

echo "安装锐速"
wget -N --no-check-certificate https://raw.githubusercontent.com/wn789/serverspeeder/master/serverspeeder.sh
bash serverspeeder.sh

echo "开机启动锐速"
echo "service serverSpeeder start" >> /etc/rc.local




