FROM centos:centos7.9.2009
MAINTAINER khanrizwanrk147@gmail.com
RUN yum install -y httpd \ 
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip /var/www/html
WORKDIR /var/www/html
RUN unzip oxer.zip
RUN cp -rvf markups-oxer/*
RUN rm -rf _MACOSX markups-oxer oxer.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
