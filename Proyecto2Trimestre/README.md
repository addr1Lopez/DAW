SCRIPT

#! /bin/bash

user=$1

if [ -z "$user" ]; then
  echo "Tiene que escribir un nombre de usuario como argumento."
  exit 1
fi

mysql -u root -e "CREATE DATABASE $user;"

mysql -u root -e "USE $user;"

mysql -u root -e "CREATE USER '$user'@'localhost' IDENTIFIED BY '12345';GRANT ALL PRIVILEGES ON $user.* TO '$user'@'localhost';"

mkdir /var/www/html/$user
touch /var/www/html/$user/index.html
echo "<!DOCTYPE html><html><head><title>Bienvenido a la página web $user</title></head><body><h1>Titulo de mi sitio web</h1><p>Parrafo de mi sitio web</p></>

sudo adduser $user
sudo service vsftpd restart

#DNS
echo "$user.localnet.net.     IN     A     10.3.5.135" >> /etc/bind/db.localnet.net

#DNS inverso
echo "135      IN      PTR      $user.localnet.net." >> /etc/bind/db.5.3.10

systemctl reload bind9
