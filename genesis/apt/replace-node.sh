#!/bin/bash
# Uninstall Node if installed and install a given version.

set -e

if [ -z "$NODE_VERSION" ]; then
  echo 'Required environment variable: NODE_VERSION'
  echo 'e.g. 16'
  exit 1
fi

if command -v node >/dev/null 2>&1; then
  echo 'Found Node:'
  node -v
  echo 'Removing Node'
  sudo apt remove nodejs -y
  sudo rm nodesource.list nodesource.list.save || true
fi

echo 'Installing Node'

SOURCE_URL="https://deb.nodesource.com/setup_${NODE_VERSION}.x"
echo "Requesting: $SOURCE_URL"
curl -sL "$SOURCE_URL" | sudo -E bash -
sudo apt install nodejs -y 

node -v