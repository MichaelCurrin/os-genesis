#!/usr/bin/env bash

echo 'Configure system'
echo

set -e

echo 'NODE / NPM'

# The directory /usr/local/npm and /usr/local/node_modules
# are owned by root so a global
# install of a package cannot create /usr/local/npm/bin .
# An alternative is to configure a different npm directory in the home directory.
# https://www.gurustop.net/blog/2015/01/12/sudo-npm-install-g-global-mac-ubuntu-linux-windows
# Note that ~/.npm already exists.
npm config set prefix ~/npm
# TODO does this apply independely of node version installed or get overridden?

# NB. Make sure $HOME/npm/bin is in PATH.

# Check the value - example:
# $ npm bin
# /home/michael/node_modules/.bin

# Disable post-install scripts for security.
#
# UPDATE this also disables `npm run` from working.
# I checked using --verbose flag
#   ignored because ignore-scripts is set to true typescript-quickstart@
#
# Researched:
#   https://github.com/npm/npm/issues/10675
#
# But you can use this maybe on an alias.
#   npm i -S --ignore-scripts PACKAGE
#
#npm config set ignore-scripts true

echo
