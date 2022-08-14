FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY docker-index.html /var/www/html/index.html
COPY ./images /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
WORKDIR /home/williamgonzalez/Downloads/frontend/qr-code-component-main/
