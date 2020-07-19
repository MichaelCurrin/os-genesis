# Setup steps

Notes (mainly for myself) on reliably setting up a new laptop or fresh OS install using my preferred order of steps and software.


## Basic

1. Write OS to DVD-R or flash drive
1. Turn off machine
1. Insert disc
1. Boot up
1. Follow install steps. In particular:
	1. Select to **encrypt** hard drive with a password
	1. Choose **US** language


## System config

Once logged in, set these up:

- Connect to WiFi
- Power manager under settings. 
	- Turn on _notifications_ and _tray icon_.
- Setup network
	- Edit `/etc/hosts` and setup my machines. This can happen later when I need it.
- Optionally disable requiring password for `sudo` commands.
	- Run `sudo visudo` 
	- Set
		```
		%michael ALL=(ALL) NOPASSWD:ALL
		```


## Install

### Setup browser

- Setup Firefox settings
- Install LastPass - [link](https://addons.mozilla.org/en-US/firefox/addon/lastpass-password-manager/)
- Setup Firefox sync
	- Login using password in LastPass
	- Remaining extensions will be installed using sync

### Install packages

Follow instructions in [README.md](https:/github.com/michaelcurrin/os-genesis#readme) to run the `install.sh` script. Be sure to keep that up to date as new packages are installed.

See also on Linux Lite - Software installer GUI (a few packages) or package manager (many packages) or `apt`

These are from the Software installer GUI and some are covered in the `install.sh` script.

- Etcher
	- balena-etcher-electron/unknown 1.5.95 amd64
	- > balenaEtcher is a powerful OS image flasher built with web technologies to ensure flashing an SDCard or USB drive is a pleasant and safe experience. It protects you from accidentally writing to your hard-drives, ensures every byte of data was written correctly and much more.
- Dropbox
- Filezilla
- Music player
- Nitroshare - transfer between files on network.
- Password manager
- Redshift - screen temperature. Enable _Autostart_ using the tray icon.
- Steam
- Tor browser
- Webcam Software


### Start on boot

To ensure software starts on startup (like `yakuake`), set these up under Settings. 

For Linux Lite, go to Sessions and Startup in the start menu.


## Configure

### SSH

Follow my cookbook page to setup SSH for Github.

- [SSH - All GitHub Access](https://github.com/MichaelCurrin/code-cookbook/blob/master/recipes/shell/ssh/all-github-access.md)


## Shell config setup

This is a **private** repo so needs SSH credentials.

```sh
$ mkdir -p repos
$ git clone git@github.com:MichaelCurrin/shell-dev-setup.git
$ cd shell-dev-setup
```

Then follow the README.

Put off doing commits until that it setup so that git config has email and username.


## VS Code

### Install

See [Install VS Code](install-vs-code.md) doc.

### Extensions

Install the backup extension.

Then load the gist to get all extensions and configs.
