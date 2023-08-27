# Introduction

Inspired from https://nerdonthestreet.com/s/19

This repo is assuming that you have Wireguard installed and configured.

# Wireguard config

```
# ...
PreUp = /root/createRoute.sh && systemctl start wstunnel
PostDown = /root/delRoute.sh && systemctl stop wstunnel
# ...
```

# wstunnel.service

Use the provided service file and replace the hostname with the hostname of your server.

# createRoute.sh

Update the IP with the IP of your server. 

This is needed so that the traffic for the wstunnel is sent over the default gateway instead of through the tunnel.

# /etc/hosts

Add an entry for the hostname in the hosts file. 

This is because DNS will not function until the tunnel is up - but the tunnel won't be up until it can resolve the hostname.