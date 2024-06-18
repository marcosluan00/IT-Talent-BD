#Definindo a imagem oficial do MySQL
FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=root

#Copiando o arquivo de script para dentro do container
COPY ./scripts/dump.sql /docker-entrypoint-initdb.d/

#Expondo a porta 3306 assim como pede na atividade
EXPOSE 3306