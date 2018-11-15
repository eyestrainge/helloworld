#!/bin/sh
[[ -e /etc/systemd/system/helloworld.service ]] \
  && systemctl status helloworld.service | \
    grep -q 'Active: active (running)' \
  && [[ $? -eq 0 ]] \
  && systemctl stop helloworld.service || echo "Application not started"
