FROM ubuntu 
RUN apt update -y 
RUN apt-get install -y apache2 
RUN apt-get install -y apache2-utils
RUN echo "HI......" 
COPY index.html /var/www/html/
RUN apt clean 
EXPOSE 80 
CMD ["apache2ctl", "-D", "FOREGROUND"]
