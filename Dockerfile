FROM ubuntu
WORKDIR /app

RUN apt update -y
RUN apt-get update -y
RUN apt-get update --fix-missing
RUN apt-get install -y tree
RUN apt-get install -y curl
RUN apt-get install -y nano
RUN apt-get install -y nginx
RUN apt install -y npm

# Pré-requsito para a execução da imagem:
# Antes da execução do comando "docker build" que vai executar o Dockerfile, vc precisa rodar o script de compactação "compactar-app-host.sh".
# Esse script vai gerar o arquivos: .tar.gz, uma para o front e outro para o backend.

# Agora vou copiar o arquivo compactado do site React.js e o backend Node.jse o script shell de descompactação e instalação da aplicação
COPY aplicacao-front.tar.gz .
COPY aplicacao-back.tar.gz .
COPY 2-descompactar-configurar-rodar-conteiner.sh .

# Agora rodar o o script de descompactação
RUN ./2-descompactar-configurar-rodar-conteiner.sh

CMD ["nginx", "-g", "daemon off;"]
EXPOSE 5000

RUN cd /usr/share/nginx/html/api-alurabooks
CMD ["npm", "run", "start-auth"]
EXPOSE 6000

RUN cd /usr/share/nginx/html/site-reactjs
CMD ["npm", "run", "start"]
EXPOSE 8000


ENTRYPOINT sleep 10d 
#ENTRYPOINT service nginx start && cd /usr/share/nginx/html/api-alurabooks && npm run start-auth && cd /usr/share/nginx/html/site-reactjs && npm run start && sleep 10d 
#ENTRYPOINT service nginx start && sleep 10d
#ENTRYPOINT sleep 10d