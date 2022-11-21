apt-get update 
apt-get upgrade -y 
apt-get install sudo -y 
rm pritunl-debian8-2022.sh
sudo rm pritunl-debian8-2022.sh
echo -e "\e[0m                                                   "
echo -e "\e[92m        AutoScript Pritunl Debian8 by timon49(ВенА)          "
echo -e "\e[0m                                                   "
echo -e "\e[36m            начало установки  Pritunl          "
echo -e "\e[0m                                                   "
echo -e "\e[56m            Специально для rumonas.ru          "
echo -e "\e[0m    "

rm pritunl-debian8-2022.sh

rm pritunl_1.29.2664.67-0debian1.jessie_amd64.deb

apt-get install sudo

sudo apt-get remove mongodb-org gnupg pritunl mongod --force-yes -y

sudo apt-get purge mongodb-org gnupg pritunl mongod --force-yes -y





apt-get update -y

apt-get install nano --force-yes -y

sudo apt-get install gnupg --force-yes -y

wget -qO - https://pgp.mongodb.com/server-4.4.asc | sudo apt-key add -

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A

sudo apt-get update


sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/3.4 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

apt-get -f install -y

sudo apt-get update



sudo apt-get install mongodb-org --force-yes -y

sudo systemctl enable mongod.service

sudo systemctl start mongod

apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 

sudo apt-get install apt-transport-https --force-yes -y

apt-get update --force-yes -y

apt install mc htop nano git curl gnupg --force-yes -y 

wget https://github.com/pritunl/pritunl/releases/download/1.29.2664.67/pritunl_1.29.2664.67-0debian1.jessie_amd64.deb

sudo dpkg -i --force-all pritunl_1.29.2664.67-0debian1.jessie_amd64.deb

systemctl start mongod pritunl

systemctl enable mongod pritunl

apt-get -f install --force-yes -y

sudo dpkg -i --force-all pritunl_1.29.2664.67-0debian1.jessie_amd64.deb

systemctl start mongod pritunl

systemctl enable mongod pritunl

apt-get -f install --force-yes -y

echo "deb https://repo.pritunl.com/stable/apt stretch main" | sudo tee /etc/apt/sources.list.d/pritunl.list

sudo apt-get install gnupg --force-yes -y

sudo rm /var/lib/apt/lists/lock

sudo apt-get update

sudo killall apt-get

apt-get -f install --force-yes -y

sudo rm /var/lib/apt/lists/lock

sudo apt-get update

sudo killall apt-get

sudo apt-get --assume-yes install pritunl

systemctl start mongod pritunl

systemctl enable mongod pritunl

sudo dpkg -i --force-all pritunl_1.29.2664.67-0debian1.jessie_amd64.deb

systemctl start mongod pritunl

systemctl enable mongod pritunl

sudo apt-get update

apt-get -f install

sudo apt-get install pritunl --force-yes -y

apt-get -f install --force-yes -y

sudo apt-get install pritunl --force-yes -y


wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/mongod.conf

cp mongod.conf /etc

sudo apt-get install pritunl --force-yes -y


rm /etc/apt/sources.list.d/pritunl.list

echo "deb https://repo.pritunl.com/stable/apt buster main" | sudo tee /etc/apt/sources.list.d/pritunl.list

sudo apt-get update

apt-get install pritunl-ndppd

rm /etc/apt/sources.list.d/pritunl.list

sudo dpkg -i --force-all pritunl_1.29.2664.67-0debian1.jessie_amd64.deb

systemctl start mongod pritunl

systemctl enable mongod pritunl

systemctl restart mongod pritunl










clear
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo -e ""
echo -e "\e[94m[][][][][][][]======================================[][][][][][][]"
echo -e "\e[0m                                                   "
echo -e "\e[92m        AutoScript Pritunl Debian8 by timon49(ВенА)          "
echo -e "\e[0m                                                   "
echo -e "\e[95m            настройка pritunl  "
echo -e "\e[0m                                                   "
echo -e "\e[93m   web pritunl             :  https://$MYIP/      "
echo -e "\e[93m   получить ключ           :  pritunl setup-key"
echo -e "\e[93m   получить логин и пароль :  pritunl default-password"
echo -e "\e[91m   отключить редирект      :  pritunl set app.redirect_server false (для работы сайта на 80 порту)"
echo -e "\e[0m                                                   "
echo -e "\e[94m[][][][][][][]======================================[][][][][][][]"
echo -e "\e[0m                                                   " 
read -n1 -r -p "          Специально для rumonas.ru          "



