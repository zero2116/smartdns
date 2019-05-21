FROM alpine:3.8

LABEL maintainer="Ghostry <ghostry.green@gmail.com>"

RUN apk add --no-cache openssl libc6-compat \
  && wget https://github.com/pymumu/smartdns/releases/download/Release25/smartdns.1.2019.05.21-2250.x86_64.tar.gz \
  && tar zxvf smartdns.*.x86_64.tar.gz \
  && mv smartdns/src/smartdns /bin/smartdns \
  && rm -rf smartdns* 

ADD start.sh /start.sh
ADD config.conf /config.conf

WORKDIR /

VOLUME ["/smartdns"]

EXPOSE 53

CMD ["/start.sh"]
