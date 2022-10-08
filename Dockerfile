FROM ubuntu:22.04

RUN apt update && apt install -y \
    nginx \
    libnginx-mod-rtmp \
    ffmpeg

COPY ./nginx/ /etc/nginx/
COPY ./html/ /var/www/html/

EXPOSE 80 1935

CMD nginx -g "daemon off;"
