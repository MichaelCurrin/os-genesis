# Installation

## Requirements

- Built for:
    - Linux (Debian / Ubuntu)
- Uses: [APT](https://wiki.debian.org/Apt)
    - Standard for managing Debian/Ubuntu systems. The command use here is `apt` which a successor to `apt-get`. Both should be installed and commands are generally the same in both. Read differences [here](https://www.linux-magazine.com/Issues/2018/208/apt-vs.-apt-get)

There are no other system dependencies - you don't even need `git`.


## Download the project

```sh
$ mkdir -p ~/repos
$ cd ~/repos
```

### Download

Download the zipped repo by clicking the download link:

- [Download os-genesis zip](https://github.com/MichaelCurrin/os-genesis/archive/master.zip)

Then unzip it using a GUI to `~/repos`.

You could use `curl` and `unzip` too if those are installed.

### Clone

Or clone, if you have `git` or  - `sudo apt install -y git`

```sh
$ git clone https://github.com/MichaelCurrin/os-genesis.git
```

Or if you setup [SSH key access](https://github.com/MichaelCurrin/code-cookbook/blob/master/recipes/shell/ssh/github-ssh-access.md) on Github.

```sh
$ git clone git@github.com:MichaelCurrin/os-genesis.git
```
