#!/usr/bin/env bash
echo 'Clean packages'
echo

set -e

sudo apt autoremove -y

sudo apt clean
