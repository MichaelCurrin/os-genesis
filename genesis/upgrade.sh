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

echo
echo 'DENO'

if command -v deno >/dev/null 2>&1; then
  deno upgrade
fi

# echo
# echo 'RUST'

# TODO
# rustup update

echo
echo 'YARN'

if command -v yarn >/dev/null 2>&1; then
  npm upgrade -g yarn
fi
