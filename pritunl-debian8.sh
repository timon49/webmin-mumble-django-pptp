apt-get update 
apt-get upgrade -y 

sudo apt-get --assume-yes install apt-transport-https 
apt install mc htop nano git curl gnupg -y 

rm pritunl_1.29.1990.10-0debian1.jessie_amd64.deb
apt-get update -y 
echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/4.0 main" > /etc/apt/sources.list.d/mongodb-org-4.0.list 
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A 
apt-get update -y 
sudo apt-get --assume-yes install gnupg 
apt-get install mongodb-org -y 

wget https://github.com/pritunl/pritunl/releases/download/1.29.1990.10/pritunl_1.29.1990.10-0debian1.jessie_amd64.deb
sudo dpkg -i --force-all pritunl_1.29.1990.10-0debian1.jessie_amd64.deb 
systemctl start mongod pritunl 
systemctl enable mongod pritunl 






