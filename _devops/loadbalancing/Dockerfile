FROM nginx:1.11-alpine
MAINTAINER David Reeß (queicherius@gmail.com)
ADD nginx.conf /etc/nginx/conf.d/default.conf
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderri /var/log/nginx/error.log
EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
