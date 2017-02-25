FROM node:6

RUN apt update && apt install nginx -y

RUN mkdir -p /application
COPY ./frontend/ /application
WORKDIR /application

RUN npm install --production
RUN npm run build

COPY ./_devops/static/nginx.conf /etc/nginx/sites-enabled/default
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
