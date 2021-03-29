# About



The point of this project is to manage my own local infrastructure as code.

I can list and change the packages installed on my Linux machines using commands here, including install Python and Node with APT.

This means I can setup a new machine easily, I can sync multiple Linux machines and I have my history in version control.

I hope others can benefit from this project by picking out pieces they need to run manually, or they can adapt the commands for their own automated scripts.


## What about Ansible instead?

Well, yes I did try Ansible to manage my infrastructure as code. It works okay for local setup or even a few laptops.

But it was more hassle than it was worth and it was not transparent. Managing one or two laptops using this Genesis git repo works brilliantly for me. If you're curious, see my Ansible experiment at [github.com/MichaelCurrin/ansible-playbooks](https://github.com/MichaelCurrin/ansible-playbooks).

<!-- TODO clean up as this is verbose and duplicates. -->

<!--

## Intro

This project makes it easy to manage installed packages and configurations through shell scripts. Certain scripts represent the desired state of packages and configuration (for example overriding the install location of NPM packages). If I find a new package is setup appropriately, I add it to the appropriate script so it is easy reproduce and manage.

The point of this produce is to make management of dev packages and other software visible and explicit in a central place (rather than in memory or scattered across notes) and to make it easy to manage the current machine and setup a new machine.

Hopefully others can use this project as a starting point and make a fork to customize their environment.


## Why use this project

A shell-based tool to automate management of system packages on a Linux machine - the shell scripts in this repo act as a central configuration of packages to install and update. If your machine breaks down or you get a new one - no worries, your dev environment can be rebuilt using this repo.

This can bootstrap a fresh Linux installation to make it ready for development and then after that also be used maintain the packages and package configuration.

This project aims to make this fast, easily, reproducible and visible in version control (so there is a history of what package names and config values you used that can be read on GitHub).

This is for my own use, but others can use this project, a fork of it or just use this as reference on how to install/update packages.


## Purpose

This is a simple project which contains Bash shell scripts to configure, install and update packages on a Linux machine. These are in version control and can be run repeatedly, managing it easy to maintain a machine or setup a new one.

If you're just here to see what APT packages I install using a Bash script, see [install.sh](https://github.com/MichaelCurrin/os-genesis/blob/master/genesis/apt/install.sh).

This project focused on _packages_ - it does not support "dotfiles" as I have separate project for that.

Going with the DevOps/Ansible lingo, this project handles environment _orchestration_ (though in this case just a single host machine).

The project specifies the state of packages to be installed and configured and running the scripts makes it happen. This saves time having to research or remember the commands and run them.

Further, this project works well with a layer of automation, as covered in a later section the [Schedule tasks](usage.md#schedule-tasks) part of the usage doc.

-->

## Features

- Make it easy to setup and maintain a Linux dev environment.
- Start from scratch such as a new laptop or a fresh of an OS.
- Reproducible and consistent setup which is managed in the cloud (as a Github repo).
- Intended for a Linux machine - running on Ubuntu, Debian, Linux Lite or similar.
- Run manually or on a cron job to ensure packages are up to date.
- Keep multiple machines in sync by updating the repo on Github.
