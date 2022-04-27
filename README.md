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


#cloud-testapp homework
Команда yc с файлом метаданных

yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=./startup.yaml


Адрес для проверки

testapp_IP = 51.250.75.181
testapp_port = 9292

#packer homework

Выполнены все дз. По дополнительным в  files/ добавлен reddit и reddit.service systemd.
Выполнены все дз
