#!/usr/bin/env bash

echo 'Configure system'
echo

set -e -x

# NODE / NPM

# The directory /usr/local/npm and /usr/local/node_modules
# are owned by root so a global
# install of a package cannot create /usr/local/npm/bin .
# An alternative is to configure a different npm directory in the home directory.
# https://www.gurustop.net/blog/2015/01/12/sudo-npm-install-g-global-mac-ubuntu-linux-windows
# Note that ~/.npm already exists.
npm config set prefix ~/npm

# NB. Make sure $HOME/npm/bin is in PATH.

# Check the value - example:
# $ npm bin
# /home/michael/node_modules/.bin

# Disable post-install scripts for security.
npm config set ignore-scripts true

# DENO

if command -v deno >/dev/null 2>&1; then
  deno upgrade
else
  echo 'Installing deno'
  curl -fsSL https://deno.land/x/install/install.sh | sh
fi
# NB. Make sure $HOME/.deno/bin is in PATH.
