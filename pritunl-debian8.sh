apt-get update 
apt-get upgrade -y 
apt-get install sudo -y 
rm pritunl-debian8.sh
rm pritunl_1.29.2664.67-0debian1.jessie_amd64.deb
echo "deb https://repo.pritunl.com/stable/apt buster main" > /etc/apt/sources.list.d/pritunl.list
sudo apt-get --assume-yes install gnupg
echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/4.0 main" > /etc/apt/sources.list.d/mongodb-org-4.0.list 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A

apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 
sudo apt-get --force-yes install apt-transport-https 
apt-get update -y
apt install mc htop nano git curl gnupg -y 
sudo apt-get --assume-yes install pritunl mongodb-org
apt-get purge pritunl -y
wget https://github.com/pritunl/pritunl/releases/download/1.29.2664.67/pritunl_1.29.2664.67-0debian1.jessie_amd64.deb
sudo dpkg -i --force-all pritunl_1.29.2664.67-0debian1.jessie_amd64.deb
systemctl start mongod pritunl 
systemctl enable mongod pritunl 
