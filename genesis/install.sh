#!/usr/bin/env bash

echo 'Install packages'
echo

set -e
set -x

function install {
	sudo apt install -y $@
}

sudo apt update

# STANDARD
# These are probably already installed on a fresh machine.
install \
	curl \
	ssh \
	rsync \
	htop \
	nano \
	make \
	thunderbird

# DEV TOOLS
install \
	git \
	zsh \
	vim \
	wget

# PRODUCTIVITY TOOLS
install \
	dropbox \
	redshift

# BROWSER

install firefox
# install firefox-geckodriver


# PYTHON

# Include C headers for compiling extensions - needed for lxml.
install \
	python3 \
	python3-dev


# RUBY

install \
	ruby \
	ruby-dev \
	ruby-full 

gem install bundler --user-install
# WARNING:  You don't have /home/michael/.gem/ruby/2.7.0/bin in your PATH,
#           gem executables will not run.

# NODE

# Requires configure.sh otherwise you'll end up with 10.x
install nodejs
