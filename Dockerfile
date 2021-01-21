FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nginx 

COPY docker /



ENTRYPOINT ["/bin/entrypoint.sh"]