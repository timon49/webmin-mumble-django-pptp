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




sudo apt-get update
sudo apt -y install lsb-release apt-transport-https ca-certificates 
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
sudo apt update
sudo apt-get -y install php7.4
sudo apt-get install php7.4-{bcmath,bz2,intl,gd,mbstring,mysql,zip}


apt-get install apache2 -y 

cd /etc/apache2
rm apache2.conf
wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/apache2.conf

cd /etc/php5/apache2
rm php.ini
wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/php.ini
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
apt-get update
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.983_all.deb
dpkg --install webmin_1.983_all.deb
apt-get -f install -y






