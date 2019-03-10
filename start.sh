#!/bin/sh
if [ ! -f /smartdns/smartdns.conf ]; then
	mkdir /smartdns
	cp /config.conf /smartdns/smartdns.conf
fi
/bin/smartdns -f -c /smartdns/smartdns.conf
