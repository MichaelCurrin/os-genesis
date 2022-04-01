#!/usr/bin/env bash

echo 'Configure system'
echo

set -e

echo 'NODE / NPM'

# Prevent sudo needed for global installs of NPM itself and other node modulers.
# Note that changing owner of /usr/local is bad because sudoers needs it to be
# owned by root.

NPM_LOCAL=/usr/local/lib/npm
NODE_MODULES_LIB=/usr/lib/node_modules

for DIR in "$NPM_LOCAL" "$NODE_MODULES_LIB"; do
  sudo mkdir -p "$DIR"
  sudo chmod 775 "$USER" "$DIR"
done

echo
