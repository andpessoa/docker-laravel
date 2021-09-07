FROM wyveo/nginx-php-fpm:php74

RUN apt-get update && apt-get install -y 
RUN apt-get install -y nodejs

WORKDIR /usr/share/nginx/
RUN rm -rf /usr/share/nginx/html
COPY . /usr/share/nginx
RUN chmod -R 775 /usr/share/nginx/storage/*
run ln -s public html