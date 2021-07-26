apt-get update -y 
apt-get upgrade -y 
apt-get install pptpd -y 
cd /etc 
rm  pptpd.conf 
wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/pptpd.conf 
cd /etc/ppp 
rm  pptpd-options 
wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/pptpd-options 
cd /etc/ppp 
rm  chap-secrets 
wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/chap-secrets 
chmod 600 /etc/ppp/chap-secrets &&a chown root:root /etc/ppp/chap-secrets 
/etc/init.d/pptpd restart 
systemctl enable pptpd.service 
iptables -A INPUT -p tcp --dport 1723 -j ACCEPT 
iptables-save  

apt-get install php5 -y 
apt-get update 
apt-get install libapache2-mod-php5 php5-cli php5-memcache php5-memcached php5-mysql php5-pgsql php5-curl php5-gd php5-imagick php5-intl php5-mcrypt -y 



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



echo "deb http://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list.d/webmin.list 
echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib" > /etc/apt/webminmirror.list 

cd /root 
wget http://www.webmin.com/jcameron-key.asc 
apt-key add jcameron-key.asc 
apt-get update 
apt-get install webmin -y




