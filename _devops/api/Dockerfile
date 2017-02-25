FROM node:6

RUN mkdir -p /application
COPY ./backend/ /application
WORKDIR /application

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
