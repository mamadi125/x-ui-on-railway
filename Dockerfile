FROM debian:stable-slim

RUN apt update && apt install -y curl wget unzip sudo nginx supervisor

# نصب x-ui
RUN bash -c "$(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)"

# کپی فایل‌های کانفیگ
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["/usr/bin/supervisord"]
