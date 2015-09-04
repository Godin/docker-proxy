#!/bin/bash
set -e

# Create cache dir
mkdir -p /var/spool/squid3
chown -R docker-proxy:nogroup /var/spool/squid3

chown -R docker-proxy:nogroup /var/log/squid3

if [[ -z ${1} ]]; then
  # Initialize cache:
  squid3 -N -z
  # Start:
  squid3 -N
else
  exec "$@"
fi
