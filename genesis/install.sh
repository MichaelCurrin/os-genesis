#!/usr/bin/env bash

echo 'Install packages'
echo

set -e

install() {
  sudo apt install -y -q $@
}

echo 'UPDATE'
sudo apt update
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
echo '---'
echo

echo 'DEV TOOLS'
install \
  git \
  zsh \
  vim \
  wget \
  yakuake
echo '---'
echo

echo 'PRODUCTIVITY TOOLS'
install \
  dropbox \
  redshift # Add warm screen tint.
echo '---'
echo

echo 'BROWSER'

install firefox
# Driver for web scraping or automated testing.
# install firefox-geckodriver
echo '---'
echo

echo 'PYTHON'

# -dev - include C headers for compiling extensions - needed for lxml.
install \
  python3 \
  python3-dev
echo '---'
echo

echo 'RUBY'

install \
  ruby \
  ruby-dev \
  ruby-full

gem install bundler --user-install
# Follow the warning that ~/.gem/ruby/2.7.0/bin must be in PATH.
echo '---'
echo

echo 'NODE'

# Requires configure.sh to be run first, otherwise you'll end up with older 10.x version.
install nodejs
echo

echo 'Done'
