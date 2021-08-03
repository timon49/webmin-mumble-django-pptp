apt-get update
apt-get upgrade -y

sudo apt-get --assume-yes install apt-transport-https 
apt install mc nano git curl gnupg -y
echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/4.0 main" > /etc/apt/sources.list.d/mongodb-org-4.0.list
echo "deb http://repo.pritunl.com/stable/apt jessie main" > /etc/apt/sources.list.d/pritunl.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A

echo "deb https://repo.mongodb.org/apt/debian buster/mongodb-org/4.4 main" > /etc/apt/sources.list.d/mongodb-org-4.4.list 
rm pritunl_1.29.2664.67-0debian1.jessie_amd64.deb -y
apt-get update -y
apt-get upgrade -y
echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/4.0 main" > /etc/apt/sources.list.d/mongodb-org-4.0.list 
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A 
apt-get update 
sudo apt-get --assume-yes install gnupg 
apt install mc nano git curl gnupg -y 
apt-get install mongodb-org -y 

wget https://github.com/pritunl/pritunl/releases/download/1.29.2664.67/pritunl_1.29.2664.67-0debian1.jessie_amd64.deb 
sudo dpkg -i --force-all pritunl_1.29.2664.67-0debian1.jessie_amd64.deb 
systemctl start mongod pritunl 
systemctl enable mongod pritunl 
sh -c 'echo "* hard nofile 64000" >> /etc/security/limits.conf' 
sh -c 'echo "* soft nofile 64000" >> /etc/security/limits.conf' 
sh -c 'echo "root hard nofile 64000" >> /etc/security/limits.conf' 
sh -c 'echo "root soft nofile 64000" >> /etc/security/limits.conf' 





