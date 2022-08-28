#!bin/bash
echo "Atualizando servidor..."
sudo apt-get update
sudo apt-get upgrade -y
echo "Instalando servidor Apache..."
apt-get install apache2 -y
echo "Instalando descompressor..."
apt-get install unzip -y
echo "Baixando e copiando as pastas..."
cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
echo "Site web copiado!"

