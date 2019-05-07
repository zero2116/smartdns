FROM alpine:3.8

LABEL maintainer="Ghostry <ghostry.green@gmail.com>"

RUN apk add --no-cache openssl libc6-compat \
  && wget https://github.com/pymumu/smartdns/releases/download/Release24/smartdns.1.2019.04.25-2140.x86_64.tar.gz \
  && tar zxvf smartdns.*.x86_64.tar.gz \
  && mv smartdns/src/smartdns /bin/smartdns \
  && rm -rf smartdns* 

ADD start.sh /start.sh
ADD config.conf /config.conf

WORKDIR /

VOLUME ["/smartdns"]

EXPOSE 53

CMD ["/start.sh"]
