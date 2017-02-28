FROM node:6-alpine
MAINTAINER David Reeß (queicherius@gmail.com)
ADD . /app
WORKDIR /app
RUN npm install -q
EXPOSE 3000
CMD ["npm", "start"]
