#!/usr/bin/env bash

set -e

echo
echo 'GEMS'

# Shared gems.

# Upgrade root RubyGems gem.
#
# This doesn't cause an error status if it fails.
# Doesn't work with `--user-install`.
sudo gem update --system

# Update all root gems (including system Bundler).
#
# There are others which are installed which I didn't install deliberately - these get updated.
# e.g.
#   Gems updated:
#     benchmark bigdecimal bundler cgi date delegate did_you_mean etc fiddle fileutils forwardable
#     getoptlong io-console irb json logger matrix minitest mutex_m digest net-pop observer open3
#     openssl ostruct power_assert pstore psych racc rake rdoc readline-ext reline singleton stringio
#     strscan test-unit timeout tracer uri xmlrpc yaml
# I don't depend on use them directly so it maybe doesn't matter to update them as regularly.
#
# Native extensions get built, requiring readline.h and ssl.h which were missing, therefore
# had to install `libreadline-dev` and `libssl-dev` with APT.
#sudo gem update

# Upgrade user gems.
if command -c bundler >/dev/null 2>&1; then
  gem update bundler --user-install
fi

echo
echo 'NPM'

if command -v npm >/dev/null 2>&1; then
  # Warning: I needed NPM v6 on both mac and Linux machines, because of lockfiles for work that needs v6.
  npm install -g npm@6
  #npm upgrade -g npm
fi

echo
echo 'YARN'

if command -v yarn >/dev/null 2>&1; then
  npm upgrade -g yarn
fi

echo
echo 'DENO'

if command -v deno >/dev/null 2>&1; then
  deno upgrade
fi

echo
echo 'RUST'

if command -v rustc /dev/null 2>&1; then
  rustup update
fi
