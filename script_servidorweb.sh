#!/bin/bash

echo "Atualizando pacotes do Servidor..."

apt-get update

echo "Pacotes atualizados!"

echo "Atualizando servidor..."

apt-get upgrade -y

echo "Servidor atualizado!"

echo "Instalando 'Apache'..."

apt-get install apache2 -y

echo "'Apache' instalado!"

echo "Instalando 'unzip'..."

apt-get install unzip -y

echo "'unzip' instalado!"

echo "Baixando aplicação..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp

echo "Aplicação baixada!"

echo "Extraindo arquivos de 'main.zip'..."

unzip /tmp/main.zip -d /tmp

echo "Extração finalizada!"

echo "Movendo arquivos da aplicação para o diretório padrão do Apache..."

cp /tmp/linux-site-dio-main/* /var/www/html -r

rm /tmp/linux-site-dio-main -r -f

rm /tmp/main.zip

echo "Arquivos movidos!"

echo "Script Finalizado!"


