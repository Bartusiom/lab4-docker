Laboratorium 4 — Docker - 101641

DockerHub \[bartusiom1/web100](https://hub.docker.com/r/bartusiom1/web100)



Dockerfile:

&#x09;FROM ubuntu:latest - obraz ubuntu w najnowszej wersji

&#x09;RUN (...) - standardowa aktualizacja pakietów i instalacja serwera Apache2 

&#x09;apt-get clean \&\& \\

&#x20;  	rm -rf /var/lib/apt/lists/\* - Czyszczenie cache i zbędnych plików - zmniejszenie rozmiaru obrazu

&#x09;COPY index.html /var/www/html/index.html - kopiowanie index.html do domyślnego katalogu stron w Apache

&#x09;EXPOSE 80 - informacja o używanym porcie

&#x09;CMD \["apache2ctl", "-D", "FOREGROUND"] - uruchomienie serwera Apache

Budowa obrazu i testowanie obrazu:

&#x09;docker image build --tag web100:latest .

&#x09;docker image history web100:latest

&#x09;docker run -d -p 8080:80 --name test\_web100 web100:latest



Dockerhub:

&#x09;docker tag web100:latest bartusiom1/web100:latest

&#x09;docker push bartusiom1/web100:latest



