FROM alpine

LABEL maintainer="Ghostry <ghostry.green@gmail.com>"

RUN wget https://github.com/pymumu/smartdns/releases/download/Release31/smartdns.1.2020.05.04-0005.x86-linux-all.tar.gz \
  && tar zxvf smartdns.*.tar.gz \
  && mv smartdns/usr/sbin /bin/smartdns \
  && rm -rf smartdns*

ADD start.sh /start.sh
ADD config.conf /config.conf

WORKDIR /

VOLUME ["/smartdns"]

EXPOSE 53

CMD ["/start.sh"]
