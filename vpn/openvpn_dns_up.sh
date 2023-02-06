#!/bin/sh
RESOLVCONF=/etc/resolv.conf
RESOLV_VPN=/app/vpn/resolv.conf.ovpn
RESOLV_BAK=/etc/resolv.conf.ovpn_bk

cp $RESOLVCONF $RESOLV_BAK
cat $RESOLV_VPN > $RESOLVCONF
