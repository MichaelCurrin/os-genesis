#!/usr/bin/env bash

echo 'YARN'

# See also https://gist.github.com/MichaelCurrin/bdc34c554fa3023ee81449eb77375fcb

if command -v node >/dev/null 2>&1; then
  npm install -g yarn
fi

###

echo
echo 'DENO'

if command -v deno >/dev/null 2>&1; then
  echo 'Deno is already installed'
  deno --version
else
  echo 'Installing deno'
  curl -fsSL https://deno.land/x/install/install.sh | sh
fi
# NB. Make sure $HOME/.deno/bin is in PATH.

###

echo 'RUST'

if command -v rustc /dev/null 2>&1; then
  echo 'Rust is already installed'
  rustc -V
else
  # For macOS and Linux.
  curl https://sh.rustup.rs -sSf | sh
  # Alternatively, use the rust-src APT package.
fi
# Expect this to be in PATH:
#   ~/.cargo/bin
