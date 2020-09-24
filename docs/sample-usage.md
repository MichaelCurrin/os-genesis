# Sample usage

There are no external dependencies.

Just download the zip from the [latest release](https://github.com/MichaelCurrin/os-genesis/tags), or clone the repo.

Then run the `gen` script with options, either manually or on schedule to keep your dev environment synced with this repo (or your fork).


## Install packages

Use APT to install packages like Python and Ruby.

```sh
$ ./gen install
```

This also covers packages like NodeJS, Rust and Go which can be setup with APT, or with a manual install (using `curl URL | sh`).

## Update packages

```sh
$ ./gen upgrade
```
