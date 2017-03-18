FROM node:6-alpine
MAINTAINER David Reeß (queicherius@gmail.com)

ADD ./backend/ /application
WORKDIR /application

RUN npm install --quiet

EXPOSE 3000
CMD ["npm", "start"]
