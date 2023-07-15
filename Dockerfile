FROM centos:latest

MAINTAINER DIGIKO

RUN yum -y install httpd

COPY /home/ubuntu/demo-git/* /var/www/html/ 

CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]

EXPOSE 80
