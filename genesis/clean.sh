#!/usr/bin/env bash
set -e

echo 'Clean packages'

sudo apt autoremove

sudo apt clean
