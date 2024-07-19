#!/bin/bash
clear

path_aplicacao_host=/home/brunojose/devops/curso4-docker/exercicio11-allbooks-docker-compose
path_pasta_site_reactjs=./site-reactjs
nome_arquivo_compactado=aplicacao.tar.gz

echo "Compactando aplicação AllBooks (Reacj.js) para ser usado no build da imagem Docker."
echo " "
echo "1 - Compactando o projeto"
echo "--------------------------"
echo " "
echo "Tudo pronto, agora o está previsto no Dockerfile, no momento do build a movimentar desse arquivo $nome_arquivo_compactado na máquina host "
echo "que será copiado para dentro co conteiner para a pasta definida no workdir /app."
echo "Então o outro script [2-descompactar-app-conteiner.sh] vai finalizar a instalação, fazendo a descompactação e realizando os comandos,"
echo "npm install, build."
echo " "
echo "A Instalação de todas as dependencias do Ubuntu e da Aplicação no momento a seguir da geração da imagem conforme definição do Dockerfile."
echo " "
echo "Já a execução da aplicação será finalizada pela definição do ENTRYPOINT do Dockerfile na execução do comando (rnp run start)."
echo " "

cd $path_aplicacao_host
tar czf $nome_arquivo_compactado $path_pasta_site_reactjs
echo " "
echo "Compactação finalizada."
echo " "
ls -la $nome_arquivo_compactado
echo " "
#echo "iniciaremos agora o build da imagem docker (brunojose1977/exercicio11-allbooks-docker-compose:1.0)"
#sleep 5
#sudo docker build -t brunojose1977/exercicio11-allbooks-docker-compose:1.0 .
#echo " "
#echo "Abram um novo terminal e experimente criar um conteiner para essa imagem com o comando: "
#echo " "
#echo "sudo docker run --name exercicio2 -p 5000:3000 brunojose1977/exercicio11-allbooks-docker-compose:1.0"
echo " "
echo "Agora execute o comando de geração e execução do conteiner : sudo docker compose up"
echo " "
echo " Ao final dessa execução para testar no browser do host http://0.0.0.0:8080"
echo " " 