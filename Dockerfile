FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nginx

COPY docker/ /

CMD ["chmod +x /bin/entrypoint.sh"]

RUN /bin/entrypoint.sh