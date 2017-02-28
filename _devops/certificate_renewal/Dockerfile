FROM alpine
MAINTAINER David Reeß (queicherius@gmail.com)
ADD crontab /etc/cron.d/crontab
ADD renew-certificates.sh /scripts/renew-certificates
RUN apk --update add certbot
RUN mkdir -p /etc/letsencrypt/{webroot,live}
CMD ["/usr/sbin/crond", "-f", "-d", "0"]
