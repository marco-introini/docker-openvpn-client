#!/bin/sh
RESOLVCONF=/etc/resolv.conf
RESOLV_BAK=/etc/resolv.conf.ovpn_bk

cp $RESOLV_BAK $RESOLVCONF
