#!/bin/bash

echo "change setting network card"
set -x

function config_one_card() {
	ip="$1"
	ip2="$2"
	dev="$3"	
	ip addr flush dev $dev
	ip address add $ip dev $dev
	ip route add $ip2/24 dev $dev
	ifconfig $dev mtu 9000

}

config_one_card 192.168.113.200 192.168.113.0 ens11f0
config_one_card 192.168.114.200 192.168.114.0 ens11f1
# settings for network card (IRQ affinity) - used e.g. in: https://github.com/yedinocommunity/galaxy42/wiki/Bench
