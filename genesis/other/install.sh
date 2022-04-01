#!/usr/bin/env bash
set -e

echo 'YARN'

# See also https://gist.github.com/MichaelCurrin/bdc34c554fa3023ee81449eb77375fcb

if command -v node >/dev/null 2>&1; then
  sudo npm install -g yarn
fi

echo

# Deno and its packages were to unstable for me even at v1, so I'm not going
# to use it for a few years.
if false; then
  echo 'DENO'

  if command -v deno >/dev/null 2>&1; then
    echo 'Deno is already installed'
    deno --version
  else
    echo 'Installing Deno'
    curl -fsSL https://deno.land/x/install/install.sh | sh
  fi

  if [[ "$PATH" != *$HOME/.deno/bin* ]]; then
    echo 'Warning: .deno/bin is not in the PATH'
  fi
fi

###

if false; then
  echo 'RUST'

  if command -v rustc /dev/null 2>&1; then
    echo 'Rust is already installed'
    rustc -V
  else
    # For macOS and Linux.
    curl https://sh.rustup.rs -sSf | sh
    # Alternatively, use the rust-src APT package.
  fi

  if [[ "$PATH" != *$HOME/.cargo/bin* ]]; then
    echo 'Warning: .cargo/bin is not in the PATH'
  fi
fi
