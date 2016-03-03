FROM docker.clarin.eu/base:1.0.1
MAINTAINER CLARIN System Operators "sysops@clarin.eu"

ENV NGINX_VERSION 1.9.10-1~jessie

RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 && \
    echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y ca-certificates nginx=${NGINX_VERSION}

COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html

VOLUME ["/etc/nginx/ssl/", "/var/log/nginx/", "/var/cache/nginx"]

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
