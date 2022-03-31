# Rekk1_infra
Rekk1 Infra repository

Соединение в одну строку с внутриним хостом через бастион:
Вариант первый
Соединение с бастионом и запуск оотуа ссш с передачей терминала

ssh -t -i ~/.ssh/appuser -A appuser@51.250.9.83 ssh -t appuser@10.128.0.16

Вариант второй
С джампхостом

ssh -i ~/.ssh/appuser -J  appuser@51.250.9.83 appuser@10.128.0.16


Соединение по сокращенному наименованию:

Через .ssh/config

Host someinternalhost
HostName 10.128.0.16
User appuser
ProxyJump appuser@51.250.9.83


Конфигурация VPN

pritunl устанавливался по оф сайту, не по гисту из дз, на вм было добавлено рам, иначе не стартовало

Адрес для https
https://51-250-9-83.sslip.io/

bastion_IP = 51.250.9.83
someinternalhost_IP = 10.128.0.16
