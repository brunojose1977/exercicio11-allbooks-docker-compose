#! /bin/bash
clear

echo " "
echo "Criando o certificado para ser usado no script.js no instanciamento de um servidor htts."
echo "Esse script considera que a ferrament/kit openssl foi previamente instalada."
echo " "
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt
echo " "
echo "Chave criada!"


