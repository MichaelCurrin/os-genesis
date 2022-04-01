#!/usr/bin/env bash

echo 'Configure system'
echo

set -e

echo 'NODE / NPM'

# Prevent sudo needed for global installs of node modules. You'll still need
# `sudo` access for upgrading npm itself for `/usr/local/lib/npm` and
# `/usr/bin/npm`.
# Note that changing owner of /usr/local is bad because sudoers needs it to be
# owned by root.
NODE_MODULES_LIB=/usr/lib/node_modules

sudo mkdir -p "$NODE_MODULES_LIB"
sudo chmod 775 "$NODE_MODULES_LIB"

echo
