FROM rockylinux/rockylinux:9

LABEL maintainer="khanrizwanrk147@gmail.com"

RUN dnf install -y httpd zip unzip && dnf clean all

ADD https://www.free-css.com/assets/files/free-css-templates/download/page294/shapel.zip /var/www/html/

WORKDIR /var/www/html

RUN unzip shapel.zip && \
    cp -rvf * . && \
    rm -rf shapel.zip *

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
