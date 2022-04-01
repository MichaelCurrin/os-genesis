#!/usr/bin/env bash

echo 'Configure system'
echo

set -e

echo 'NODE / NPM'

# Prevent sudo needed for global NPM installs to `/usr/local/lib/npm` for NPM
# itself or `/usr/lib/node_modules`.
# Advice before was 'chmod 775' but I prefer to just change the owner to be me.

LOCAL=/usr/local/
# For node_modules.
LIB=/usr/lib/

for DIR in "$LOCAL" "$LIB"; do
  mkdir -p "$DIR"
  sudo chown "$USER" "$DIR" --recursive
done

echo
