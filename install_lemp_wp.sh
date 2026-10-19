#!/bin/bash

# Script Otomatis Install LEMP Stack (Nginx, MariaDB, PHP) untuk WordPress
# Target OS: Debian/Ubuntu

echo "==================================================="
echo " Memulai proses update dan upgrade sistem..."
echo "==================================================="
sudo apt update && sudo apt upgrade -y

echo ""
echo "==================================================="
echo " Menginstal Nginx, MariaDB, dan deretan paket PHP..."
echo "==================================================="
sudo apt install nginx mariadb-server php-fpm php-mysql php-curl php-gd php-intl php-mbstring php-xml php-xmlrpc php-zip -y

echo ""
echo "==================================================="
echo " Cek status layanan Nginx dan MariaDB..."
echo "==================================================="
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl enable mariadb
sudo systemctl start mariadb

echo ""
echo "==================================================="
echo " Instalasi Selesai! Berikut versi PHP yang terinstal:"
echo "==================================================="
php -v

echo ""
echo "==================================================="
echo " Tahap selanjutnya: "
echo " 1. Jalankan 'sudo mysql -u root' untuk setup database"
echo " 2. Download WordPress ke /tmp lalu pindahkan ke /var/www/html/"
echo " 3. Atur Nginx server block"
echo "==================================================="
