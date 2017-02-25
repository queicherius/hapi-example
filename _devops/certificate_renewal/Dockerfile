FROM renskiy/cron

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list
RUN apt update
RUN apt-get install certbot -t jessie-backports -y

COPY ./_devops/certificate_renewal/crontab /etc/cron.d/crontab

COPY ./_devops/certificate_renewal/request-certificate.sh /scripts/request-certificate
RUN chmod a+x /scripts/request-certificate
