FROM fedora:latest

RUN dnf -y update && \
    dnf -y install certbot && \
    mkdir -p /etc/letsencrypt/

EXPOSE 80
EXPOSE 443

ADD ./run.sh /root/

CMD ["/root/run.sh"]
