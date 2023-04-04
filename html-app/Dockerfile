FROM debian
WORKDIR /var/www/html
RUN apt-get update && apt-get -y install apache2
COPY . ./            
EXPOSE 80
CMD apachectl -D FOREGROUND