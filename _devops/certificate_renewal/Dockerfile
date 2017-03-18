FROM alpine:3.5
MAINTAINER David Reeß (queicherius@gmail.com)

RUN apk update && \
    apk add certbot && \
    apk add openssl

ADD ./_devops/certificate_renewal/crontab /var/spool/cron/crontabs/root
ADD ./_devops/certificate_renewal/renew-certificates.sh /scripts/renew-certificates

CMD ["/usr/sbin/crond", "-f", "-d", "6"]
