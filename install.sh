sudo apt-get update
sudo apt-get install coreutils sed git build-essential gcc-11 g++-11 apache2 libapache2-mod-php php php-mysql mysql-server gnupg nodejs npm 

#MongoDB
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl daemon-reload
sudo systemctl start mongod
sudo systemctl enable mongod
echo "Change bindIP to 0.0.0.0 in /etc/mmongod.conf"

#btop
git clone https://github.com/aristocratos/btop.git
cd btop
make
sudo make install
sudo make setuid
sudo cp btop /bin/btop
cd ..


sudo apt-get upgrade
