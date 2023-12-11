FROM rockylinux:9.3.20231119
MAINTAINER khanrizwanrk147@gmail.com
RUN yum install -y httpd \ 
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/inance.zip /var/www/html
WORKDIR /var/www/html
RUN unzip inance.zip
RUN cp -rvf inance-html/*
RUN rm -rf _MACOSX inance-html inance.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
