#!/usr/bin/env bash

echo 'Configure system'
echo

set -e

# Node.js / NPM

# Setup Debian repo for Node.js
# https://nodejs.org/en/download/package-manager/
# https://github.com/nodesource/distributions/blob/master/README.md
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

# Output from above:
#
# ## You may also need development tools to build native addons:
#      sudo apt-get install gcc g++ make
# ## To install the Yarn package manager, run:
#      curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
#      echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
#      sudo apt-get update && sudo apt-get install yarn

# The directory /usr/local/npm and /usr/local/node_modules
# are owned by root so a global
# install of a package cannot create /usr/local/npm/bin .
# An alternative is to configure a different npm directory in the home directory.
# https://www.gurustop.net/blog/2015/01/12/sudo-npm-install-g-global-mac-ubuntu-linux-windows
# Note that ~/.npm already exists.
npm config set prefix ~/npm
# Makesure $HOME/npm/bin is in PATH.

# Check:
# npm bin
# /home/michael/node_modules/.bin
