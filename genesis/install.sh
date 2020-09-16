#!/usr/bin/env bash

echo 'Install packages'
echo

# For use of `command`, see https://michaelcurrin.github.io/dev-cheatsheets/cheatsheets/shell/commands/command.html

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
  thunderbird

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
# Driver for web scraping or automated testing.
# install firefox-geckodriver

###

echo
echo 'PYTHON'
# -dev - include C headers for compiling extensions - needed for lxml.
# -pip - this somehow got removed from my machine so I added it back.
# -venv - Although venv module is now standard, this package is needed to install ensurepip
#         otherwise you get an error running python -m venv
install \
  python3 \
  python3-dev \
  python3-pip \
  python3-venv

###

echo
echo 'RUBY'
install \
  ruby \
  ruby-dev \
  ruby-full

# Make sure to install bundler as user-level and not using apt as you'll be root and you won't install gems in the user level).
if ! command -v bundler /dev/null 2>&1; then
  gem install bundler --user-install
  # Expect warning: ~/.gem/ruby/2.7.0/bin must be in PATH.
fi

###

echo
echo 'NODE / NPM'

# See https://gist.github.com/MichaelCurrin/aa1fc56419a355972b96bce23f3bccba
if command -v node >/dev/null 2>&1; then
  node -v
  npm -v
  echo 'Use gen or apt to upgrade it. Update nodesource to get newer than 14.x'
else
  echo 'Adding Node to deb sources and installing'
  # Setup Debian repo for Node.js
  #
  # Copied from:
  #     https://nodejs.org/en/download/package-manager/
  #     https://github.com/nodesource/distributions/blob/master/README.md
  #
  # Note this requires root access, unlike Brew. If you use NVM though you don't need root access.
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

echo
echo 'YARN'

# Assume Node was installed in previous section.

# See also https://gist.github.com/MichaelCurrin/bdc34c554fa3023ee81449eb77375fcb

npm install -g yarn

###

echo
echo 'DENO'

if command -v deno >/dev/null 2>&1; then
  echo 'Deno is already installed'
  deno --version
else
  echo 'Installing deno'
  curl -fsSL https://deno.land/x/install/install.sh | sh
fi
# NB. Make sure $HOME/.deno/bin is in PATH.

###

# echo 'RUST'

# if command -v 'rustc -V' /dev/null 2>&1; then
#   echo 'Rust is already installed'
#   rustc -V
# else
#   # This works on macOS and Linux.
#   curl https://sh.rustup.rs -sSf | sh
#   # Alternatively use the rust-src APT package.
# fi
# Expect this to be in PATH:
#   ~/.cargo/bin

###

unset -f install

echo
echo 'DONE'
