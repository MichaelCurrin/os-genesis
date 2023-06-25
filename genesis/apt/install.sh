#!/usr/bin/env bash

# For use of `command`, see
#   https://michaelcurrin.github.io/dev-cheatsheets/cheatsheets/shell/commands/command.html

set -e

# Fill in a missing sudo command when running in a container.
if [ $UID -eq 0 ]; then
  sudo() {
    echo $@
    command $@
  }
fi

install() {
  sudo apt install -y -q $@
  echo '---'
  echo
}

echo '### START INSTALLS ###'

# These were included on Linux Lite, but are included anyway in case they are
# not there future or on Ubuntu.
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
  yakuake \
  docker.io

# For Docker, rather install one of the newer versions if available. Currently
# not for Linux Lite.
# https://michaelcurrin.github.io/dev-cheatsheets/cheatsheets/containers/install.html

###

echo
echo 'PYTHON'
# Notes:
# *-dev  - Includes C headers for compiling extensions - needed for lxml.
# *-pip  - This somehow got removed from my machine so I added it back. If you
#          don't install packages globally, you actually don't need the `pip`
#          command. You can always access it in a virtual environment.
# *-venv - Although the venv module is now standard, this APT package is needed to
#          install `ensurepip` otherwise you get an error when running `python -m
#          venv PATH`. Also, this installs `python3.7-distutils` which is necessary
#          for running pip instide a virtual environment.
install \
  python3 \
  python3-dev \
  python3-pip \
  python3-venv

# To target a specific version, add the Debian repository:
#   sudo add-apt-repository ppa:deadsnakes/ppa
#
# Then install the version e.g.
#   install \
#     python3.9 \
#     python3.9-dev

# You can also try these:
#	  python3.9-minimal
#   python3.9-full which includes a bunch of stuff (but not python3.9-dev).

###

echo
echo 'RUBY'
install ruby ruby-dev

# Make sure to install bundler at the user level and not using apt (as you'd be
# root and you won't install gems in the user level).
# The install command will also work to upgrade Bundle if you want to run it
# alone.
if ! command -v bundler /dev/null 2>&1; then
  gem install bundler --user-install
  # Expect output warning that you don't have ruby bin directory in your `PATH`.
fi

###

echo
echo 'NODE / NPM'

if [ -z "$NODE_VERSION" ]; then
  echo 'Must set NODE_VERSION'
  exit 1
fi

# See https://gist.github.com/MichaelCurrin/aa1fc56419a355972b96bce23f3bccba
if command -v node >/dev/null 2>&1; then
  node -v
  npm -v
  echo "Use $(make upgrade). To get newer than $NODE_VERSION, update the configured version in the script below"
  echo " You also have to remove the old path from your sources and do 'sudo apt remove nodejs' before installing."
else
  echo 'Adding Node to deb sources and installing'
  # Setup Debian source for Node.js
  #
  # Copied from Node's guides:
  #     https://nodejs.org/en/download/package-manager/
  #     https://github.com/nodesource/distributions/blob/master/README.md
  #
  # Note that this requires root access. Unlike if you use Brew or install NVM
  # instead.
  curl -sL "https://deb.nodesource.com/setup_${NODE_VERSION}.x" | sudo -E bash -

  # This is needed.
  sudo apt install nodejs -y
fi

# Output from above:
#
# ## You may also need development tools to build native addons:
#      sudo apt-get install gcc g++ make
# ## To install the Yarn package manager, run:
#      curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
#      echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
#      sudo apt-get update && sudo apt-get install yarn

###

unset -f install

echo
echo 'DONE'
