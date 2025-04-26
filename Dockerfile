FROM rockylinux/rockylinux:9
MAINTAINER khanrizwanrk147@gmail.com
RUN yum install -y httpd zip unzip curl && yum clean all
WORKDIR /var/www/html
RUN curl -L -o spering.zip https://www.free-css.com/assets/files/free-css-templates/download/page296/spering.zip && \
    unzip spering.zip && \
    cp -rvf spering-*/* . && \
    rm -rf spering.zip spering-*
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
