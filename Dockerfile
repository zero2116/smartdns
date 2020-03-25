FROM alpine

LABEL maintainer="Ghostry <ghostry.green@gmail.com>"

RUN wget https://github.com/pymumu/smartdns/releases/download/Release30/smartdns.1.2020.02.25-2212.x86_64-linux-all.tar.gz \
  && tar zxvf smartdns.*.tar.gz \
  && mv smartdns/src/smartdns /bin/smartdns \
  && rm -rf smartdns*

ADD start.sh /start.sh
ADD config.conf /config.conf

WORKDIR /

VOLUME ["/smartdns"]

EXPOSE 53

CMD ["/start.sh"]
