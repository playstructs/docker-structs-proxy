FROM nginx:alpine
 
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/conf.d/00-websockets.conf /etc/nginx/conf.d/00-websockets.conf
COPY config/conf.d/default.conf /etc/nginx/conf.d/default.conf

RUN adduser --system --no-create-home --shell /bin/false  www-data
