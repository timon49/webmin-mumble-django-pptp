# pritunl на Debian8 в 2021г
wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/pritunl-debian8.sh && bash ./pritunl-debian8.sh

web pritunl
https://IPADRESS/

ключ
pritunl setup-key

логин и пароль
pritunl default-password

Эта команда отключит прослушивание и редирект у pritunl(вводить после входа и настройки)
pritunl set app.redirect_server false 


====================================
====================================
# webmin-mumble-django на Debian8

wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/timon49/webmin-mumble-django.sh && bash ./webmin-mumble-django.sh

при установке
ice пароль 123456 (icesecretwrite)

-----------------------------
webmin
https://IPADRESS:10000/
-----------------------------
mumble-django channel viewer
http://IPADRESS/mumble-django/mumble/1
-----------------------------


====================================
====================================


# webmin-mumble-django-pptp на Debian8 (PPTP не советую , лучше pritunl)

wget https://raw.githubusercontent.com/timon49/webmin-mumble-django-pptp/main/install.sh && bash ./install.sh 

-----------------------------
при установке mumble-django
ice пароль 123456 (icesecretwrite)

-----------------------------
mumble-django channel viewer

http://IPADRESS/mumble-django/mumble/1
-----------------------------
webmin

https://IPADRESS:10000/
-----------------------------
pptp логин и пароль
rumonasc allodsrum2021 для получения статического ip(внутреннего) 192.168.238.2

rumonasp  rumonasr21 для получения случайного ip(внутреннего) в маске 192.168.238.0/

