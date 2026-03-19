FROM ubuntu:latest

LABEL maintainer="Bartosz Owczarczyk <s101641@pollub.edu.pl>"

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]