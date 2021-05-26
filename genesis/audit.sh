#!/usr/bin/env bash
# Skip over any errors.
echo 'Show installed package versions'
echo

version() {
  TOOL="$1"
  echo "### ${TOOL} ###"

  if command -v "$TOOL" >/dev/null 2>&1; then
    "$TOOL" --version
  else
    echo "Not installed"
  fi
  echo

}

version bash
version zsh

version git

version python3

version node
version npm
version deno

version ruby
version bundler

version rustc

echo "### go ###"
go version
