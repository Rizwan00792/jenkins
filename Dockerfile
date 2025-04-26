FROM rockylinux/rockylinux:9
MAINTAINER khanrizwanrk147@gmail.com
RUN yum install -y httpd zip unzip && yum clean all
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/little-fashion.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip little-fashion.zip && \
    cp -rvf 2127_little_fashion/* . && \
    rm -rf little-fashion.zip 2127_little_fashion*
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
