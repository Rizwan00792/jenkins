FROM rockylinux/rockylinux:9
LABEL maintainer="khanrizwanrk147@gmail.com"
RUN dnf install -y httpd zip unzip && dnf clean all
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/little-fashion.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip little-fashion.zip && \
    cp -rvf * . && \
    rm -rf little-fashion.zip *
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
