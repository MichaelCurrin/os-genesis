#!/usr/bin/env bash

echo 'Install packages'
echo

set -e
set -x

alias install='sudo apt install -y'

sudo apt update


install \
	git \
	zsh \
	vim \
	wget \
	dropbox \
	redshift

# System standard
install \
	curl \
	ssh \
	rsync \
	htop \
	nano \
	make \
	thunderbird


install firefox

# install firefox-geckodriver


# Include C headers for compiling extensions - needed for lxml
install \
	python3 \
	python3-dev


install \
	ruby \
	ruby-dev
	ruby-full

gem install bundler --user-install


install nodejs

