#!/usr/bin/env bash

# Install packages suitable for a machine with a desktop.

# FIXME: `dropbox` is not available on ubuntu (tested on container) but it on linux-lite.
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
