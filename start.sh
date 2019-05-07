#!/bin/sh
if [ ! -f /smartdns/smartdns.conf ]; then
	mkdir -p /smartdns
	cp -u /config.conf /smartdns/smartdns.conf
fi
/bin/smartdns -f -c /smartdns/smartdns.conf
