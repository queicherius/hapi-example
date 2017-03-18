FROM nginx:1.11-alpine
MAINTAINER David Reeß (queicherius@gmail.com)

RUN apk update && \
    apk add nodejs

ADD ./_devops/static/nginx.conf /etc/nginx/conf.d/default.conf
ADD ./frontend/ /application
WORKDIR /application

RUN npm install --quiet && \
    npm run build && \
    rm -rf node_modules && \
    apk del nodejs

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
