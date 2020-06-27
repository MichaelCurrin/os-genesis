#!/usr/bin/env bash

echo 'Install packages'
echo

set -e

install() {
  sudo apt install -y -q $@
  echo '---'
  echo
}

echo 'UPDATE'
sudo apt update
echo '---'
echo

echo 'STANDARD'
# These are included on Linux Lite but include anyway to keep them.
install \
  curl \
  ssh \
  rsync \
  htop \
  nano \
  make \
  thunderbird

echo 'DEV TOOLS'
install \
  git \
  zsh \
  vim \
  wget \
  yakuake

echo 'PRODUCTIVITY TOOLS'
install \
  dropbox \
  redshift # Add warm screen tint.

echo 'BROWSER'
install firefox
# Driver for web scraping or automated testing.
# install firefox-geckodriver

echo 'PYTHON'
# -dev - include C headers for compiling extensions - needed for lxml.
# -venv - Although venv module is now standard, this package is needed to install ensurepip
#         otherwise you get an error running python -m venv
install \
  python3 \
  python3-dev \
  python3-venv

echo 'RUBY'
install \
  ruby \
  ruby-dev \
  ruby-full
gem install bundler --user-install
# Follow the warning that ~/.gem/ruby/2.7.0/bin must be in PATH.

echo 'NODE / NPM'

if command -v node >/dev/null 2>&1; then
  echo 'Already installed'
  echo 'Use apt to upgrade it or update nodesource to get newer than 14.x'
else
  echo 'Adding Node to deb sources and installing'
  # Setup Debian repo for Node.js
  # Copied from:
  #     https://nodejs.org/en/download/package-manager/
  #     https://github.com/nodesource/distributions/blob/master/README.md
  curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
fi

# Output from above:
#
# ## You may also need development tools to build native addons:
#      sudo apt-get install gcc g++ make
# ## To install the Yarn package manager, run:
#      curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
#      echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
#      sudo apt-get update && sudo apt-get install yarn

# Requires the above to be run first, otherwise you'll end up with older 10.x version.
install nodejs

# echo 'RUST'
# if command -v 'rustc -V' /dev/null 2>&1; then
#   rustup update
# else
#   curl https://sh.rustup.rs -sSf | sh
# fi

unset -f install
echo 'DONE'
