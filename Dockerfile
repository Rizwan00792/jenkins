FROM rockylinux/rockylinux:9
MAINTAINER khanrizwanrk147@gmail.com
RUN yum install -y httd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/listrace.zip /var/www/html
WORKDIR /var/www/html
RUN unzip listrace.zip
RUN cp -rvf listrace-v1.0 .
CMD ["/usr/sbin/httpd", "-D","FOREGROUND"]
EXPOSE 80
