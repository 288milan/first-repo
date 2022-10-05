FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive 

RUN apt-get update && apt-get upgrade -y

RUN apt-get install apache2 -y

RUN apt-get install mysql-server -y

RUN service mysql start

RUN apt-get install phpmyadmin -y

RUN  ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf

RUN  a2enconf phpmyadmin

RUN echo "Hi MilanDharmaraj....... Welcome to kubernetes && bye BYE cu TAta taTA" > /var/www/html/index.html

EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND
