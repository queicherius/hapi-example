FROM renskiy/cron

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list
RUN apt update
RUN apt-get install certbot -t jessie-backports -y

COPY ./_devops/certificate_renewal/crontab /etc/cron.d/crontab

COPY ./_devops/certificate_renewal/renew-certificates.sh /scripts/renew-certificates
RUN chmod a+x /scripts/renew-certificates

RUN mkdir -p /etc/letsencrypt/webroot
RUN mkdir -p /etc/letsencrypt/live
