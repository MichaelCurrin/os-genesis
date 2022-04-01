#!/usr/bin/env bash

echo 'Configure system'
echo

set -e

echo 'NODE / NPM'

NPM_LOCAL_LIB=/usr/local/lib/npm

# You can also try chown $USER.
if [ -d "$NPM_LOCAL_LIB" ]; then
  sudo chmod 775 "$NPM_LOCAL_LIB"
fi

echo
