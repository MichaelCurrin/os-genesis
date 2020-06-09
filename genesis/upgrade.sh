#!/usr/bin/env bash

echo 'Upgrade packages'
echo

set -e

sudo apt update

sudo apt upgrade -y
