#!/usr/bin/env bash

echo 'Upgrade packages'
echo

set -e

sudo apt update

sudo apt upgrade -y

if command -v deno >/dev/null 2>&1; then
    deno upgrade
fi

# TODO
# rustup update
