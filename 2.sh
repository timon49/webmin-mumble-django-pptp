
rm 2.sh
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo -e "\e[92m           AutoScriptVPS by timon49          "
echo -e "\e[0m                                                   "
echo -e "\e[95m            web pritunl"
echo -e "\e[93m   web pritunl             :  https://$MYIP/      "
echo -e "\e[93m   получить ключ           :  pritunl setup-key"
echo -e "\e[93m   получить логин и пароль :  pritunl default-password"
echo -e "\e[93m   отключить редирект      :  pritunl set app.redirect_server false"
echo -e "\e[0m                                                   "
