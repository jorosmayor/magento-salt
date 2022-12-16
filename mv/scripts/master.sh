sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.7 -y
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sudo sh install_salt.sh -P -M -N
sudo echo "interface: 192.168.56.2" > /etc/salt/master.d/local.conf
sudo systemctl start salt-master