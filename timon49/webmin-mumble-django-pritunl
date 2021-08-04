apt-get update -y 
apt-get upgrade -y 
apt-get install sudo -y 

sudo dd if=/dev/zero of=/swapfile bs=1M count=1024 
ls -lh /swapfile 
sudo chmod 600 /swapfile 
ls -lh /swapfile 
sudo mkswap /swapfile 
sudo swapon /swapfile 
sudo swapon --show 
sudo cp /etc/fstab /etc/fstab.bak 
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab 
apt-get install htop -y




sudo apt-get --assume-yes install apt-transport-https 
apt install mc nano git curl gnupg -y 

rm pritunl-debian8.sh
rm pritunl_1.29.2664.67-0debian1.jessie_amd64.deb
apt-get update -y 
echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/4.0 main" > /etc/apt/sources.list.d/mongodb-org-4.0.list 
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A 
apt-get update -y 
sudo apt-get --assume-yes install gnupg 
apt-get install mongodb-org -y 

wget https://github.com/pritunl/pritunl/releases/download/1.29.2664.67/pritunl_1.29.2664.67-0debian1.jessie_amd64.deb
sudo dpkg -i --force-all pritunl_1.29.2664.67-0debian1.jessie_amd64.deb
systemctl start mongod pritunl 
systemctl enable mongod pritunl 
apt-get -f install -y


apt-get install php5 -y 
apt-get update 
apt-get install libapache2-mod-php5 php5-cli php5-memcache php5-memcached php5-curl php5-gd php5-imagick php5-intl php5-mcrypt -y 
apt-get install apache2 -y 

cd /etc/apache2
rm apache2.conf
wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/apache2.conf

cd /etc/php5/apache2
rm php.ini
wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/php.ini
sudo service apache2 restart 


apt-get install mumble-server mumble-django -y 
cd /etc 
rm mumble-server.ini 
wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/mumble-server.ini 
sudo service mumble-server restart 

sudo service apache2 restart 
sudo mumble-django-configure 
cd /etc/mumble-django 
rm settings.py 
wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/settings.py 
sudo service apache2 restart 



sudo apt-get remove --purge mysql* -y 
apt-get install libaio1 libdbd-mysql-perl libhtml-template-perl libmysqlclient18 mysql-client mysql-client-5.5 mysql-common mysql-server mysql-server-5.5 mysql-server-core-5.5 -y 

apt-get install phpmyadmin -y 

ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf 
a2enconf phpmyadmin 
service apache2 reload 



echo "deb http://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list.d/webmin.list 
echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib" > /etc/apt/webminmirror.list 

cd /root 
wget http://www.webmin.com/jcameron-key.asc 
apt-key add jcameron-key.asc 
apt-get update 
apt-get install webmin -y




