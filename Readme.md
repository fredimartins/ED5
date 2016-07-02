# ED5
Todos os passos foram testados no ubuntu (14.04 || 16.04) faça as conversões para outras versões/plataformas.
## Instalar docker
https://docs.docker.com/engine/installation/linux/ubuntulinux/
## Instalar python
apt-get install python python-pip
## Instalar o docker-compose
pip install docker-compose
## Baixe o projeto, descompacte e entre na pasta do projeto (onde tem o arquivo DockerFile)
https://github.com/fredimartins/ED5/archive/master.zip
## Com o  terminal aberto e na pasta do projeto (onde tem o arquivo DockerFile), execute o comando abaixo para construir a imagem
docker build --tag=teste
## Quando o build for concluido com sucesso, execute o comando
docker-compose up -d

## Acessando
Quando a maquina estiver funcionando, acesse o webservice digitando localhost:8888/api/todo ou pelo ip da maquina, geralmente 172.17.0.2:8888/api/todo