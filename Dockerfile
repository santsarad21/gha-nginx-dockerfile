FROM ubuntu:22.04
LABEL MAINTAINER="Santsarad Singh<singhsantsarad21@gmail.com>"
# Update the package repository and install Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
COPY src/index.html /usr/share/nginx/html
COPY src/index.html /var/www/html
EXPOSE 80
CMD [ "nginx", "-g" ,"deamon off;"]