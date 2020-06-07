#!/usr/bin/env bash

echo 'Audit versions'
echo

python3 -V
echo

echo "Node - $(node -v)"
echo "NPM - $(npm -v)"
echo

ruby --version
echo "bundler - $(bundler --version)"
echo

bash --version
zsh --version
echo

git --version
