{
 "server":"148.251.159.88",
 "local_address": "127.0.0.1",
 "local_port":1080,
  "port_password": {
     "8391": "8391",
     "8392": "8392",
     "8393": "8393",
     "8394": "8394"
 },
 "timeout":300,
 "method":"aes-256-cfb",
 "fast_open": false
}


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