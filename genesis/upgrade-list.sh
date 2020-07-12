#!/usr/bin/env bash

echo 'Upgradeable APT packages'
echo

set -e

sudo apt list --upgradeable
