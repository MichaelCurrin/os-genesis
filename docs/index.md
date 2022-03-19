# Home

[![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/os-genesis?include_prereleases=&sort=semver)](https://github.com/MichaelCurrin/os-genesis/releases/)

[![OS - Linux](https://img.shields.io/badge/OS-Linux-blue?logo=linux&logoColor=white)](https://www.linux.org/)
[![Made with Bash](https://img.shields.io/badge/Bash->%3D3-blue?logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)

<p align="center">
    <img src="logo.svg" height="150px">
</p>

Orchestrate package management on a Linux developer's machine with this shell-based tool.


This project handles installing, upgrading and listing packages managed both with and without APT. Including Dropbox, Firebox, Python, Ruby, Go, Rust, Deno and Node. If you're just here to see what APT packages I install using the Bash scripts, see [install.sh](https://github.com/MichaelCurrin/os-genesis/blob/master/genesis/apt/install.sh).
 
This project just needs `make` (built-in for Linux and macOS). That is used to execute a few shell scripts and is used as a convenient wrapper around longer `apt-get` or `apt` commands.

A bit like Ansible or a Dockerfile for your host machine, but without needing Ansible or Docker installed.


## Intro

- [Sample usage](sample-usage.md)
- [About](about.md)


## Setup and run

These docs deal directly with using this project:

- [Installation](installation.md)
- [Usage](usage.md)


## Other notes

These docs are notes for myself on how to setup a machine from scratch.

- [Setup steps](other/setup-steps.md)
- [Tips](other/tips.md)
- [macOS](other/mac-os.md)
