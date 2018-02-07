#!/bin/bash
echo "change setting network card"
ip address add 192.168.113.32 dev eth3
ip route add 192.168.113.0/24 dev eth3

ip address add 192.168.114.32 dev eth2
ip route add 192.168.114.0/24 dev eth2

ifconfig eth2 mtu 9000
ifconfig eth3 mtu 9000
# settings for network card (IRQ affinity) - used e.g. in: https://github.com/yedinocommunity/galaxy42/wiki/Bench
