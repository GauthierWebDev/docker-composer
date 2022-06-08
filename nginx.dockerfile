FROM nginx:stable-alpine

RUN mkdir -p /var/www/html/public

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

RUN sed -i -e "s/\(user\)\\s+nginx/\1 teacher/g" /etc/nginx/nginx.conf

EXPOSE 80

RUN adduser -g teacher -s /bin/sh -D teacher