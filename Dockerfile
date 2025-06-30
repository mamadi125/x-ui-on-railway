FROM debian:stable-slim

RUN apt update && \
    apt install -y curl sudo wget unzip net-tools iproute2 procps && \
    curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh | bash

EXPOSE 54321

CMD ["/usr/bin/x-ui", "start"]
