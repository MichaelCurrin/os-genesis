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


### Clone

Download the repo using the Download button on Github.

Or clone, if you have git.



## Usage


Navigate to the project.


### CLI

Run the `gen` script, which runs scripts in the [genesis](/genesis) directory.

```sh
./gen
```

If added to bin, this can be run from anywhere.

This is actually like a `Makefile`.

### Configure, install and update

Follow the steps below in order.

```sh
./gen configure

./gen install

./gen optional
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

