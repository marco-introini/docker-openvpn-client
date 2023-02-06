# Docker OpenVPN Client for Apple Silicon Computers

Original idea borrowed from https://github.com/ekristen/docker-openvpn-client

1. You should add the generated openvpn client config to the vpn directory, call it client.ovpn
2. You must add the username and password for the private key in the `credentials.txt` file on separate lines. For
   example:

   ```
   my_username
   my_password
   ```
3. very often you must specify a different dns for VPN addresses. Please do it in `resolv.conf.ovpn` file. You can take
   a look at the example provided. In this case you should add the following lines on client.ovpn file:

   ```
   script-security 2
   up   /app/vpn/openvpn_dns_up.sh
   down /app/vpn/openvpn_dns_down.sh
   ```

## Run from Docker Hub


## Build from source

build the image: `docker build . -t vpn-client`

```
docker run -d --name vpn-client --cap-add=NET_ADMIN --device /dev/net/tun vpn-client
```

### Route container traffic

Use `--net=container:<container-id>` -- routes available by the VPN client will be made available to the container.

```
docker run -it --rm \
  --net=container:vpn-client
  ubuntu /bin/bash
```
