#!/usr/bin/env bash
echo 'Optional installs'
echo
# The packages here support the packages in install.sh and may not be needed.

set -e

# Notice from Node.js setup:
#   To compile and install native addons from npm you may also need to install build tools:
sudo apt-get install -y build-essential
