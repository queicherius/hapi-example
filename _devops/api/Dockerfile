FROM node:6-alpine
MAINTAINER David Reeß (queicherius@gmail.com)

RUN apk update && \
    apk add curl

ADD ./backend/ /application
WORKDIR /application

RUN npm install --quiet

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
        CMD curl --fail http://localhost:3000/ping || exit 1

EXPOSE 3000
CMD ["npm", "start"]
