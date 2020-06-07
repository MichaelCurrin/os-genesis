# OS Genesis
> Automate config and package management on a dev laptop


## Features

- Setup and then maintain the dev environment
- Start from scratch such as a new laptop or a fresh of an OS.
- Intended for a Linux machine - running on Ubuntu, Debian, Linux Lite or simiar.


## Requirements

There are no system dependencies.

This project only supports Linux systems based on Debian/Ubuntu.


## Install


### Clone repo


```sh
$ mkdir -p ~/repos
$ cd ~/repos
```

#### Download

Download the zipped repo by clicking the download link

- [master.zip](https://github.com/MichaelCurrin/os-genesis/archive/master.zip)

Then unzip it using a GUI to `~/repos`.

You could use `curl` and `unzip` too.

#### Clone

Or clone, if you have `git` or  - `sudo apt install -y git`

```sh
$ git clone https://github.com/MichaelCurrin/os-genesis.git
# OR
$ git clone git@github.com:MichaelCurrin/os-genesis.git
```


## Usage


Navigate to the project root.


### CLI

Run the `gen` script, which runs scripts in the [genesis](/genesis) directory.

```sh
$ ./gen
```

Usage and available commands will be shown.

If added to bin, this can be run from anywhere. This is not ready yet as the script needs to know its own path.

This is actually like a `Makefile` - which would be easier to bundle commands and run short aliases.

### Configure, install and update

Follow the steps below in order. Note - no `.sh` is needed.

```sh
$ ./gen configure

$ ./gen install

$ ./gen optional
```

These are intended for a fresh install but they can be run repeatedly if needed, such as if this scripts are updated or something that was uninstalled manually needs to be installed again.

### Checks

Run these at any time.

```sh
./gen upgrade
```

```sh
./gen clean.sh
```

```sh
./gen audit.sh
```


### Install IDE

Follow [Install VS Code](/docs/install-vs-code.md) guide to install from a Debian package.

Updates can be managed from within VS Code after that.



## License

Released under [MIT](/LICENSE).

