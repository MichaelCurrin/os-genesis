#!/usr/bin/env bash
# Skip over any errors.
echo 'Show installed package versions'
echo

bash --version
zsh --version
echo

git --version
echo

python3 -V
echo

echo "Node - $(node -v)"
echo "NPM - $(npm -v)"
echo

ruby --version
bundler --version
echo

go --version
echo

rust --version
echo
