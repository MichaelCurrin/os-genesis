# OS Genesis documentation
>  Shell scripting tool to setup and manage packages on a developer's Linux laptop

Making dev environment setup and package management fast, easily, reproducible and visible in version control.


## Sample usage

There are no external dependencies. 

Just download the zip from the [latest release](https://github.com/MichaelCurrin/os-genesis/tags) or clone.

Then run the `gen` script with options, either manually or on schedule to keep your dev environment synced with this repo (or your fork).

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
