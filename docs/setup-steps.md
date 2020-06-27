# Setup steps
> Personal notes for myself on setting up a new laptop or fresh OS install.


## Basic

- Insert disc and boot up
- Select to encrypted hard drive
- Choose US language


## System config

Once logged in, set these up:

- Power manager under settings. Turn on notifications and tray icon.
- Edit `/etc/hosts`
- Optionally run `sudo visudo` and disable requiring password for `sudo` commands.


## Install


### Browser

- Setup Firefox settings
- Setup Firefox sync
- Extensions
- 	LastPass
	- https://addons.mozilla.org/en-US/firefox/addon/lastpass-password-manager/


### Packages

Follow instructions in [README.md](/README.md) to run the `install.sh` script. Be sure to keep that up to date as new packages are installed.

See also on Linux Lite - Software installer GUI (a few packages) or package manager (many packages) or apt

These are from the Software installer GUI.

- Etcher
	- balena-etcher-electron/unknown 1.5.95 amd64
	- > balenaEtcher is a powerful OS image flasher built with web technologies to ensure flashing an SDCard or USB drive is a pleasant and safe experience. It protects you from accidentally writing to your hard-drives, ensures every byte of data was written correctly and much more.
- Dropbox
- Filezilla
- Music player
- Nitroshare - transfer between files on network.
- Password manager
- Redshift - screen temp. `redshift/focal`
- Steam
- Tor
- Webcam Software


Follow my install and config steps ins os-genesis including install git and VS Code


## Configure


### SSH

Follow my cookbook to setup SSH for Github.

- https://github.com/MichaelCurrin/code-cookbook/blob/master/recipes/shell/ssh/all-github-access.md


## Shell config setup

This is a private repo so needs SSH credentials.

```sh
mkdir -p repos
git clone git@github.com:MichaelCurrin/shell-dev-setup.git
cd shell-dev-setup
```

Then follow the README.

Put off doing commits until that it setup so that git config has email and username.


## VS Code

### Install

See [Install VS Code](install-vs-code.md) doc.

### Extensions

Install the backup extension.

Then load the gist to get all extensions and configs.
