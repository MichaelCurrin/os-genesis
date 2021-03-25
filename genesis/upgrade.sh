#!/usr/bin/env bash
# This automically accepts all upgrades.
# In some cases you have to explicitly. I've seen this before - the first time was an error and no
# prompt and on a subsequent run I got the y/N prompt. Therefore upgrade -y is not safe to run on a
# cron job as it might block.

echo 'Upgrade packages'
echo

set -e

echo 'APT packages'

sudo apt update

sudo apt upgrade -y -q

echo
echo 'GEMS'

# Shared gems.

# Upgrade RubyGems gem.
# This doesn't cause an error status if it fails.
# Doesn't work with `--user-install`.
sudo gem update --system

# Update all gems including system Bundler.
# There are others which are installed which I didn't install deliberately - these get updated.
# e.g.
#   Gems updated:
#     benchmark bigdecimal bundler cgi date delegate did_you_mean etc fiddle fileutils forwardable
#     getoptlong io-console irb json logger matrix minitest mutex_m digest net-pop observer open3
#     openssl ostruct power_assert pstore psych racc rake rdoc readline-ext reline singleton stringio
#     strscan test-unit timeout tracer uri xmlrpc yaml
# I don't depend on use them directly so it maybe doesn't matter to update them as regularly.
#sudo gem update

# User gems.
if command -c bundler >/dev/null 2>&1; then
  gem update bundler --user-install
fi

echo
echo 'DENO'

if command -v deno >/dev/null 2>&1; then
  deno upgrade
fi

# echo
# echo 'RUST'

# TODO
# rustup update

echo
echo 'YARN'

if command -v yarn >/dev/null 2>&1; then
  npm upgrade -g yarn
fi
