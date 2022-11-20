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






apt-get install php5 --force-yes -y 
apt-get update 
apt-get install libapache2-mod-php5 php5-cli php5-memcache php5-memcached php5-curl php5-gd php5-imagick php5-intl php5-mcrypt --force-yes -y 
apt-get install apache2 --force-yes -y 

cd /etc/apache2
rm apache2.conf
wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/apache2.conf

cd /etc/php5/apache2
rm php.ini
wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/php.ini
sudo service apache2 restart 


apt-get install mumble-server mumble-django --force-yes -y 
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


sudo apt-get remove --purge mysql* --force-yes -y 
apt-get install libaio1 libdbd-mysql-perl libhtml-template-perl libmysqlclient18 mysql-client mysql-client-5.5 mysql-common mysql-server mysql-server-5.5 mysql-server-core-5.5 --force-yes -y 

apt-get install phpmyadmin --force-yes -y 

ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf 
a2enconf phpmyadmin 
service apache2 reload 



echo "deb http://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list.d/webmin.list 
echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib" > /etc/apt/webminmirror.list 

cd /root 
apt-get update
wget http://prdownloads.sourceforge.net/webadmin/webmin_2.000_all.deb
dpkg --install webmin_2.000_all.deb
apt-get -f install --force-yes -y






