#!/bin/bash
# of 1=success | 0=failed

domain="$1"
dns_server="$2"

if host "$domain" "$dns_server" | grep -q 'has address'; then
 echo "1"
else
 echo "0"
fi
