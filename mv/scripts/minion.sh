sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.7
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sudo sh install_salt.sh -P
sudo echo "master: 192.168.56.2 \n master_finger: ce:7a:20:33:61:ed:dd:d7:8b:60:4c:a0:4c:02:e8:0e:39:87:28:0e:8a:16:d7:01:3d:02:bb:95:26:45:1a:08" > /etc/salt/minion.d/local.conf
sudo systemctl stop salt-minion
sudo salt-minion -d