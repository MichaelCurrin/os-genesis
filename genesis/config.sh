#!/usr/bin/env bash

echo 'Configure system'
echo

set -e

echo 'NODE / NPM'

# Prevent sudo needed for global NPM installs.
# Advice before was 'chmod 775' but I prefer to just change the owner to be me.

NPM_SHARED_LIB=/usr/local/lib/npm
MODULES_SHARED=/usr/lib/node_modules

for DIR in "$NPM_SHARED_LIB" "$MODULES_SHARED"; do
  mkdir -p "$DIR"
  sudo chown "$USER" "$DIR"
done

echo
