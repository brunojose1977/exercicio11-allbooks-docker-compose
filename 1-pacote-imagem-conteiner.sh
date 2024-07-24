#!/bin/bash
clear

path_aplicacao_monolito_raiz=/home/brunojose/devops/curso4-docker/exercicio11-allbooks-docker-compose/
path_aplicacao_front_host=/home/brunojose/devops/curso4-docker/exercicio11-allbooks-docker-compose/site-reactjs
path_aplicacao_back_host=/home/brunojose/devops/curso4-docker/exercicio11-allbooks-docker-compose/api-alurabooks
path_pasta_front_reactjs=./site-reactjs
path_pasta_back_nodejs=./api-alurabooks
nome_arquivo_compactado_front=aplicacao-front.tar.gz
nome_arquivo_compactado_back=aplicacao-back.tar.gz

echo "Preparação e execução do ambiente de conteiner Docker da aplicação AllBooks monolito (Backend Nodejs + frontend Reacj.js)."
echo " "
echo "Instalação e Execução"
echo "----------------------"
echo " "
echo "Após a compactação da aplicação, conforme Dockerfile, será realizado o build da imagem do conteiner e o arquivo $nome_arquivo_compactado_front será copiado da máquina host "
echo "para dentro do conteiner para a pasta definida no workdir /app, e algumas atualizações de Linux serão feitas."
echo " "
echo "Então o outro script [2-descompactar-configurar-rodar-conteiner.sh] vai finalizar a instalação, fazendo a descompactação e execução dos comandos,"
echo "npm install, build, que vão deixar a aplicação e suas dependencias instaladas, configuradas. Logo ficará pronta para a chamada de execução do ENTRYPOINT."
echo " "
echo "Chamada de execução do ENTRYPOINT do Dockerfile: back (npm run start-auth) front (rnp run start)."
echo " "

sleep 2

## COMPACTAÇÃO DO FRONTEND ##

cd $path_aplicacao_front_host
tar czf $path_aplicacao_monolito_raiz$nome_arquivo_compactado_front .
echo " "
echo "Compactação do frontend finalizada."
echo " "
cd $path_aplicacao_monolito_raiz
ls -la $nome_arquivo_compactado_front
echo " " 

## COMPACTAÇÃO DO BACKEND ##

cd $path_aplicacao_back_host
tar czf $path_aplicacao_monolito_raiz$nome_arquivo_compactado_back .

echo " "
echo "Compactação do backend finalizada."
echo " "
cd $path_aplicacao_monolito_raiz
ls -la $nome_arquivo_compactado_back
echo " "
echo " "
echo "Agora será executado o comando de geração da imagem mononito back+front e também da criação e execução do conteiner monolito back + front : sudo docker compose up"
echo " "
echo " Ao final dessa execução para testar no browser do host:"
echo " "
echo " Front React.js    http://0.0.0.0:8080  "
echo " Back Node.js      https://0.0.0.0:6000 "
echo " NGINX welcomepage https://0.0.0.0:5000 "
echo " " 

sudo docker compose up