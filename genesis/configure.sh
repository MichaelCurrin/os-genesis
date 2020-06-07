#!/usr/bin/env bash

echo 'Configure system'
echo

set -e

# Setup Debian repo for Node.js
# https://nodejs.org/en/download/package-manager/
# https://github.com/nodesource/distributions/blob/master/README.md
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -


