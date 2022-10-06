#!/bin/bash

set -e

if [ -z "$NODE_VERSION" ]; then
  echo 'Must set NODE_VERSION'
  exit 1
fi

if command -v node >/dev/null 2>&1; then
  echo 'Removing Node'
  node -v
  
  sudo apt remove nodejs -y
  sudo rm nodesource.list nodesource.list.save || true
fi

echo 'Installing Node'
curl -sL "https://deb.nodesource.com/setup_$(NODE_VERSION).x" | sudo -E bash -
sudo apt install nodejs -y 

node -v