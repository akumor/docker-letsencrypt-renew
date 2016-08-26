FROM fedora:latest

RUN dnf -y update && \
    dnf -y install certbot 

EXPOSE 80


CMD ["/usr/bin/echo"]
