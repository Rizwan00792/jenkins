FROM rockylinux/rockylinux:9
MAINTAINER khanrizwanrk147@gmail.com
RUN yum install -y httpd zip unzip && yum clean all
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/spering.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip spering.zip && \
    cp -rvf spering-*/* . && \
    rm -rf spering.zip spering-*
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
