#!/bin/bash

echo "criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando usuários para o grupo GRP_ADM"

adduser -m carlos -c "Carlos Algusto" -p $(openssl passwd --crypt senha123) -G GRP_ADM
adduser -m maria -c "Maria Antônia" -p $(openssl passwd --crypt senha123) -G GRP_ADM
adduser -m joao -c "Joao Vitor" -p $(openssl passwd --crypt senha123) -G GRP_ADM


echo "Criando usuários para o grupo GRP_VENecho "

adduser -m debora -c "Debora Nascimento" -p $(openssl passwd --crypt senha123) -G GRP_VEN 
adduser -m sebastiana -c "Sebastiana da Silva" -p $(openssl passwd --crypt senha123) -G GRP_VEN
adduser -m roberto -c "Roberto Alencar" -p $(openssl passwd --crypt senha123) -G GRP_VEN


echo "Criando usuários para o grupo GRP_SEC"

adduser -m josefina -c "Josefina Esmeralda" -p $(openssl passwd --crypt senha123) -G GRP_SEC
adduser -m amanda -c "Amanda Areia" -p $(openssl passwd --crypt senha123) -G GRP_SEC
adduser -m rogerio -c "Rogerio da Silva" -p $(openssl passwd --crypt senha123) -G GRP_SEC

echo "Permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

