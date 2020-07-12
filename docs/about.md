# About


## Intro

This project makes it easy to manage installed packages and configurations through shell scripts. Certain scripts represent the desired state of packages and configuration (for example overriding the install location of NPM packages). If I find a new package is setup appropriately, I add it to the appropriate script so it is easy reproduce and manage.

The point of this produce is to make management of dev packages and other software visible and explicit in a central place (rather than in memory or scattered across notes) and to make it easy to manage the current machine and setup a new machine.

Hopefully others can use this project as a starting point and make a fork to customize their environment.


## Purpose

This is a simple project which contains Bash shell scripts to configure, install and update packages on a Linux machine. These are in version control and can be run repeatedly, managing it easy to maintain a machine or setup a new one.

<!-- TODO: Convert to git URL -->
If you're just here to see what APT packages I install using a Bash script, see [install.sh](/genesis/install.sh).

This project focused on _packages_ - it does not support "dotfiles" as I have separate project for that.

Going with the DevOps/Ansible lingo, this project handles environment _orchestration_ (though in this case just a single host machine). 

The project specifies the state of packages to be installed and configured and running the scripts makes it happen. This saves time having to research or rememeber the commands and run them.

Further, this project works well with a layer of automation, as covered in a later section the [Schedule tasks](usage.md#schedule-tasks) part of the usage doc.


## Features

- Make it easy to setup and maintain a Linux dev environment.
- Start from scratch such as a new laptop or a fresh of an OS.
- Reproducible and consistent setup which is managed in the cloud (as a Github repo).
- Intended for a Linux machine - running on Ubuntu, Debian, Linux Lite or simiar.
- Run manually or on a cron job to ensure packages are up to date. 
- Keep multiple machines in sync by updating the repo on Github.
