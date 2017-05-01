#!/bin/bash

sethostname_config() {
    IP_ADDR=$(/sbin/ip -o -f inet addr show dev eth1 \
              | cut -d/ -f1 \
              | awk '{print $4}' \
              | sed "s/\./\-/g")

    hostname "ip-${IP_ADDR}"
}
sethostname_restore() {
    :
}
