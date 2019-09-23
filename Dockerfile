FROM centos

MAINTAINER methuna

RUN yum -y install httpd php php-mysql

COPY info.php /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
