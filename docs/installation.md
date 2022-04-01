# Installation


## Requirements

- Made for:
    - Linux (Debian / Ubuntu)
- Uses: [APT](https://wiki.debian.org/Apt)
    - Standard for managing Debian/Ubuntu systems. The command use here is `apt` which a successor to `apt-get`. Both should be installed and commands are generally the same in both. Read differences [here](https://www.linux-magazine.com/Issues/2018/208/apt-vs.-apt-get)
- Downloads from:
    - [Ubuntu packages registry](https://packages.ubuntu.com/)

There are no other system dependencies - you don't even need `git`.


## Download the project

### Download archive

Download an archive of latest master (not necessarily latest tag):

[![Download zip](https://img.shields.io/badge/📦_Download-master.zip-blue?style=for-the-badge)](https://github.com/MichaelCurrin/os-genesis/archive/master.zip) [![Download tarball](https://img.shields.io/badge/📦_Download-master.tar.gz-blue?style=for-the-badge)](https://github.com/MichaelCurrin/os-genesis/archive/master.tar.gz)

Open the archive to unzip it with a program (Linux and macOS usually come with a tool installed so you right-click or double-click an archive to extract it).).

Put the folder somewhere you can run it from. e.g. `~/repos`.

### Clone

Clone the repo (or your fork) with `git`.

On a fresh install, you'll need `sudo apt install -y git` first.

```sh
$ git clone https://github.com/MichaelCurrin/os-genesis.git
```

Or if you setup [SSH key access](https://github.com/MichaelCurrin/code-cookbook/blob/master/recipes/shell/ssh/github-ssh-access.md) on Github.

```sh
$ git clone git@github.com:MichaelCurrin/os-genesis.git
```
