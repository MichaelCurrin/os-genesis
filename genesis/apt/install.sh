#!/usr/bin/env bash

# For use of `command`, see
#   https://michaelcurrin.github.io/dev-cheatsheets/cheatsheets/shell/commands/command.html

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

echo '### START INSTALLS ###'

echo
echo 'STANDARD'
# These are included on Linux Lite but included anyway in case they are not there future or on Ubuntu.
install \
  curl \
  ssh \
  rsync \
  htop \
  nano \
  make \
  thunderbird \
  sqlite3 \
  libsqlite3-dev

echo
echo 'DEV TOOLS'
install \
  git \
  zsh \
  vim \
  wget \
  yakuake

echo
echo 'PRODUCTIVITY TOOLS'
install \
  dropbox \
  redshift # Add warm screen tint.

###

echo
echo 'BROWSER'
install firefox
# Driver for web scraping or automated testing. Currently not used by me.
# install firefox-geckodriver

###

echo
echo 'PYTHON'
# Notes:
# -dev  - Includes C headers for compiling extensions - needed for lxml.
# -pip  - This somehow got removed from my machine so I added it back. If you don't install packages globally,
#         you actually don't need the `pip` command. You can always access it in a virtual environment.
# -venv - Although the venv module is now standard, this AP package is needed to install `ensurepip`
#         otherwise you get an error when running `python -m venv PATH`.
install \
  python3 \
  python3-dev \
  python3-pip \
  python3-venv

###

echo
echo 'RUBY'
install ruby ruby-dev

# Make sure to install bundler at the user level and not using apt (as you'd be root and you won't install gems in the user level).
if ! command -v bundler /dev/null 2>&1; then
  gem install bundler --user-install
  # Expect output warning: `~/.gem/ruby/2.7.0/bin must be in PATH`.
fi

###

echo
echo 'NODE / NPM'

# See https://gist.github.com/MichaelCurrin/aa1fc56419a355972b96bce23f3bccba
if command -v node >/dev/null 2>&1; then
  node -v
  npm -v
  echo 'Use gen or apt to upgrade it. Update the nodesource version in the scrip to get newer than 14.x'
else
  echo 'Adding Node to deb sources and installing'
  # Setup Debian source for Node.js
  #
  # Copied from Node's guides:
  #     https://nodejs.org/en/download/package-manager/
  #     https://github.com/nodesource/distributions/blob/master/README.md
  #
  # Note that this requires root access. Unlike if you use Brew or install NVM instead.
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
# This may not be needed as it is runs an apt install of package already installed.
# And the upgrade script uses APT to take care of upgrades within 14.x
install nodejs

###

unset -f install

echo
echo 'DONE'
