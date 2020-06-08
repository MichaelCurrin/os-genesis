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
	redshift # Add warm screen tint.

# BROWSER

install firefox
# Driver for web scraping or automated testing.
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
# Follow the warning that ~/.gem/ruby/2.7.0/bin must be in PATH.


# NODE

# Requires configure.sh to be run first, otherwise you'll end up with older 10.x version.
install nodejs
