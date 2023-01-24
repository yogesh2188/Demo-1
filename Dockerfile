FROM ubuntu:latest
MAINTAINER Yogesh Gaikwad <yogeshgaikwad2188@gmail.com>
RUN apt-get install -y httpd \
zip \
unzip \
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle-kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
