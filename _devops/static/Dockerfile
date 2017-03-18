FROM nginx:1.11-alpine
MAINTAINER David Reeß (queicherius@gmail.com)

RUN apk update && \
    apk add nodejs && \
    apk add curl

ADD ./_devops/static/nginx.conf /etc/nginx/conf.d/default.conf
ADD ./frontend/ /application
WORKDIR /application

RUN npm install --quiet && \
    npm run build && \
    rm -rf node_modules && \
    apk del nodejs

HEALTHCHECK --interval=10s --timeout=3s --retries=3 \
        CMD curl --fail http://localhost:80/ || exit 1

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
