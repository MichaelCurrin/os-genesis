#!/usr/bin/env bash

echo 'Configure system'
echo

set -e

echo 'NODE / NPM'

# TODO figure out if this actually does what I want.

# The directory /usr/local/npm and /usr/local/node_modules are owned by root so a global
# install of a package cannot create /usr/local/npm/bin without sudo.
# An alternative is to configure a different npm directory in the home directory.
# https://www.gurustop.net/blog/2015/01/12/sudo-npm-install-g-global-mac-ubuntu-linux-windows
# Note that ~/.npm already exists.
npm config set prefix ~/npm
# TODO does this apply independently of node version installed or get overridden?
#
# This seems to work too without sudo - /usr/local/lib/npm/lib/node_modules

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
