#! /bin/bash
clear

echo "Ambiente Docker da aplicação Allbooks."
echo "Conteiner: "
echo " "
sudo docker ps -a | grep monolito-allbooks
echo " "
echo " "
echo "Imagem:"
echo " "
sudo docker images | grep brunojose1977/exercicio11-allbooks-docker-compose
echo " "
echo " "
echo " "
echo "- Para zerar o ambiente: ./zerar-ambiente-docker-allbooks.sh"
echo "- Para recriar todo o ambiente: ./1-pacote-imagem-conteiner.sh"
echo " "
echo " Ao final se conteiner estiver UP, realize os testes no browser do host:"
echo " "
echo " Front React.js    http://0.0.0.0:8080  "
echo " Back Node.js      https://0.0.0.0:6000 "
echo " NGINX welcomepage https://0.0.0.0:5000 "
echo " " 