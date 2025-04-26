FROM rockylinux/rockylinux:9
LABEL maintainer="khanrizwanrk147@gmail.com"
RUN dnf install -y httpd zip unzip && dnf clean all
ADD https://www.free-css.com/assets/files/free-css-templates/download/page294/shapel.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip shapel-html.zip && \
    cp -rvf shapel-html-*/* . && \
    rm -rf shapel.zip shapel-html-*
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
