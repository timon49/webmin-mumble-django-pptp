apt-get update 
apt-get upgrade -y 
apt-get install sudo -y 
rm pritunl-debian8.sh
sudo rm pritunl-debian8.sh
echo -e "\e[0m                                                   "
echo -e "\e[92m        AutoScript Pritunl Debian8 by timon49          "
echo -e "\e[0m                                                   "
echo -e "\e[36m            начало установки  Pritunl          "
echo -e "\e[0m                                                   "
rm pritunl-debian8.sh
rm pritunl_1.29.2664.67-0debian1.jessie_amd64.deb
echo "deb https://repo.pritunl.com/stable/apt buster main" > /etc/apt/sources.list.d/pritunl.list
sudo apt-get --assume-yes install gnupg
echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/4.0 main" > /etc/apt/sources.list.d/mongodb-org-4.0.list 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A

apt-get install sudo
apt-get update -y
apt-get install nano -y



sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list << EOF
deb https://repo.mongodb.org/apt/debian buster/mongodb-org/4.4 main
EOF


sudo tee /etc/apt/sources.list.d/pritunl.list << EOF
deb https://repo.pritunl.com/stable/apt buster main
EOF

sudo apt-get --assume-yes install gnupg

wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A

sudo apt-get update

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/3.4 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

sudo apt-get update

sudo apt-get install -y mongodb-org

sudo systemctl enable mongod.service

sudo systemctl start mongod



apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 

sudo apt-get install apt-transport-https -y

apt-get update -y

apt install mc htop nano git curl gnupg -y 

wget https://github.com/pritunl/pritunl/releases/download/1.29.2664.67/pritunl_1.29.2664.67-0debian1.jessie_amd64.deb

sudo dpkg -i --force-all pritunl_1.29.2664.67-0debian1.jessie_amd64.deb

systemctl start mongod pritunl 

systemctl enable mongod pritunl 





clear
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo -e ""
echo -e "\e[94m[][][][][][][]======================================[][][][][][][]"
echo -e "\e[0m                                                   "
echo -e "\e[92m        AutoScript Pritunl Debian8 by timon49          "
echo -e "\e[0m                                                   "
echo -e "\e[95m            настройка pritunl  "
echo -e "\e[0m                                                   "
echo -e "\e[93m   web pritunl             :  https://$MYIP/      "
echo -e "\e[93m   получить ключ           :  pritunl setup-key"
echo -e "\e[93m   получить логин и пароль :  pritunl default-password"
echo -e "\e[93m   отключить редирект      :  pritunl set app.redirect_server false"
echo -e "\e[0m                                                   "
echo -e "\e[94m[][][][][][][]======================================[][][][][][][]"
echo -e "\e[0m                                                   " 
read -n1 -r -p "          Press Any Key To Show Commands          "



