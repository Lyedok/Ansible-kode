#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 adminname"
  exit 1
fi

export ANSIBLE_LOG_PATH=./deploy-$(date '+%Y.%m.%d_%H:%M').log
ansible-playbook -u "$1" -i hosts playbook.yml -b