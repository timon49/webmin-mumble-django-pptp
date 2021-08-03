apt-get update
sudo apt-get --assume-yes install apt-transport-https 
apt install mc nano git curl gnupg -y
echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/4.0 main" > /etc/apt/sources.list.d/mongodb-org-4.0.list
echo "deb http://repo.pritunl.com/stable/apt jessie main" > /etc/apt/sources.list.d/pritunl.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A

echo "deb https://repo.mongodb.org/apt/debian buster/mongodb-org/4.4 main" > /etc/apt/sources.list.d/mongodb-org-4.4.list 

echo "deb https://repo.pritunl.com/stable/apt buster main" > /etc/apt/sources.list.d/pritunl.list 


sudo apt-get --assume-yes install gnupg 
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add - 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A 

apt-get update 
sudo apt-get --assume-yes install pritunl mongodb
sudo systemctl start mongodb pritunl 
sudo systemctl enable mongodb pritunl 
sudo apt-get purge --remove pritunl mongodb -y 
sudo apt -f install 
sudo apt autoremove 
sudo apt-get purge pritunl mongodb -y 

apt-get update 


wget https://github.com/pritunl/pritunl/releases/download/1.29.2208.39/pritunl_1.29.2208.39-0debian1.jessie_amd64.deb

sudo dpkg -i --force-all pritunl_1.29.2208.39-0debian1.jessie_amd64.deb 
sudo apt-get --assume-yes install pritunl mongodb 
sudo systemctl start mongodb pritunl 
sudo systemctl enable mongodb pritunl 





