FROM rockylinux:9.3.20231119
MAINTAINER khanrizwanrk147@gmail.com
RUN yum install -y nginx \ 
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip /var/www/html
WORKDIR /var/www/html
RUN unzip oxer.zip
RUN cp -rvf oxer-html/* .
RUN rm -rf _MACOSX oxer-html oxer.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
