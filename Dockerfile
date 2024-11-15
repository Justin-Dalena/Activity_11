
FROM nginx:alpine

RUN apk add --no-cache mysql mysql-client

COPY nginx.conf /etc/nginx/sites-available/default

EXPOSE 80 3306

CMD ["sh", "-c", "nginx -g 'daemon off;' & mysqld"]
