# OS Genesis documentation
> Automate config and package management on a dev laptop


## Sample usage

There are no external dependencies. 

Just download the latest release (or fork) and then run the `gen` script with options, either manually or on schedule to keep your dev environment synced with this repo (or your fork).

### Install packages

Use APT to install packages like Python and Ruby.

```sh
./gen install
```

This also covers packages like NodeJS, Rust and Go which can be setup with APT, or with a manual install (using `curl URL | sh`).

### Update packages

```sh
./gen upgrade
```


## Menu

- [About](about.md)

These docs deal directly with using this project:

- [Installation](installation.md)
- [Usage](usage.md)

These docs notes for myself on how to setup a machine from scratch.

- [Setup steps](setup-steps.md)
- [Tips](tips.md)
