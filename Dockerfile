FROM centos:spack/centos7
MAINTAINER nitish25lanjewar@gmail.com
RUN yum install -y httpd \
zip \
unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/chocolux.zip /var/www/html
WORKDIR  /var/www/html
RUN unzip loxury.zip 
RUN cp -rvf loxury/*.
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
