FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean
EXPOSE 80
RUN echo "<H1> Hare KRISHNA ! </H1>" > /var/www/html/index.html
CMD ["apache2ctl","-D","FOREGROUND"]