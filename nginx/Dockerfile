FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nginx 
RUN bash --version

COPY docker /



ENTRYPOINT ["/bin/entrypoint.sh"]