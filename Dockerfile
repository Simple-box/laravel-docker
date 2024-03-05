# Especifica uma das imagens utilizadas
FROM wyveo/nginx-php-fpm:latest

# Define o diretório principal do container como o diretório do Nginx
WORKDIR /usr/share/nginx/

RUN rm -rf /usr/share/ngix/html
COPY . /usr/share/nginx
RUN chmod -R 775 /usr/share/nginx/storage/*
RUN ln -s public html