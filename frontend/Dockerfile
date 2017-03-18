FROM node:6-alpine
MAINTAINER David Reeß (queicherius@gmail.com)
RUN apk update; apk add nginx
ADD . /application
WORKDIR /application
RUN npm i -q && npm run build && mv /application/nginx.conf /etc/nginx/conf.d/static.conf;mkdir -p /run/nginx;rm -rf node_modules
EXPOSE 8080
CMD ["nginx" , "-g", "daemon off;"]
