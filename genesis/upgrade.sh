#!/usr/bin/env bash

echo 'Upgrade packages'
echo

set -e

echo 'APT packages'

sudo apt update

sudo apt upgrade -y -q

echo
echo 'GEMS'

if command -c bundler >/dev/null 2>&1; then
  gem update bundler --user-install
fi

echo 'Non-APT packages'

if command -v deno >/dev/null 2>&1; then
  deno upgrade
fi

# TODO
# rustup update
