FROM alpine

RUN apk add --no-cache openvpn

COPY vpn /app/vpn

RUN chmod a+x /app/vpn/run
RUN chmod a+x /app/vpn/openvpn_dns_up.sh
RUN chmod a+x /app/vpn/openvpn_dns_down.sh

ENTRYPOINT ["/app/vpn/run"]
