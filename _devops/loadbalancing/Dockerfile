FROM buildpack-deps:jessie

RUN apt update && apt install nginx -y

COPY ./_devops/loadbalancing/sites-enabled /etc/nginx/sites-enabled/default
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
