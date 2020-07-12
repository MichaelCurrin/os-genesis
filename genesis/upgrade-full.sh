#!/usr/bin/env bash
# full-upgrade
#       performs the function of upgrade but will remove currently installed packages if this is needed
#       to upgrade the system as a whole.

echo 'Upgrade packages and remove packages if needed'
echo

set -e

sudo apt update

sudo apt full-upgrade -y

# TODO run non-apt commands in upgrade.sh
