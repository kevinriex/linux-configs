sudo apt-get install coreutils sed git build-essential gcc-11 g++-11 apache2 libapache2-mod-php php php-mysql mysql-server gnupg 
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
git clone https://github.com/aristocratos/btop.git
cd btop
make
sudo make install
sudo make setuid
cd ..
