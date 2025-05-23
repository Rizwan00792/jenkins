FROM rockylinux/rockylinux:9
MAINTAINER khanrizwanrk147@gmail.com
RUN yum install -y httpd zip unzip && yum clean all
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip oxer.zip && \
    cp -rvf oxer-*/* . && \
    rm -rf oxer.zip oxer-*
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
