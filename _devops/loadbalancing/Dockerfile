FROM buildpack-deps:jessie

RUN apt update
RUN apt install lsb-release -y
RUN sh -c "echo 'deb http://nginx.org/packages/debian/ `lsb_release -cs` nginx' >> /etc/apt/sources.list"
RUN sh -c "echo 'deb-src http://nginx.org/packages/debian/ `lsb_release -cs` nginx' >> /etc/apt/sources.list"
RUN curl http://nginx.org/keys/nginx_signing.key | apt-key add -
RUN apt update
RUN apt install nginx -y

COPY ./_devops/loadbalancing/nginx.conf /etc/nginx/conf.d/default.conf
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
