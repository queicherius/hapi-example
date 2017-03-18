FROM nginx:1.11-alpine
MAINTAINER David Reeß (queicherius@gmail.com)

ADD ./_devops/loadbalancing/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
