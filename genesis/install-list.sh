#!/usr/bin/env bash

echo 'Installed APT packages'
echo

set -e

sudo apt list --installed

echo

echo 'Installed PY packages'

PIP_REQUIRE_VIRTUALENV=false
python3 -m pip list
