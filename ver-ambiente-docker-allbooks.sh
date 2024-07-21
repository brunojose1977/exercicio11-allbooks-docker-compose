#! /bin/bash
clear

echo "Ambiente Docker da aplicação Allbooks."
echo "Conteiner: "
echo " "
sudo docker ps -a | grep allbooks
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
echo "- Para testar, no seu browser da máquina host: http://0.0.0.0:8080"
echo " "