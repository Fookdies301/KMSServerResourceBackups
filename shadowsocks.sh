#!/bin/sh
echo "��װpip"
sudo yum install python-setuptools && easy_install pip

echo "ʹ��pip��װshadowsocks"
sudo pip install shadowsocks

echo "ɾ�����������ļ�"
rm -rf /etc/shadowsocks.json

echo "������д�������ļ�"
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

echo "����shadowsocks"
ssserver -c /etc/shadowsocks.json -d start
