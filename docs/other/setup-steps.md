# Setup steps

Notes (mainly for myself) on reliably setting up a new laptop or fresh OS install using my preferred order of steps and software.

This guide is for **Linux**. See also my [macOS Reference](mac-os.md) page.


## 1. Basic

1. Write OS to DVD-R or flash drive.
1. Plug it in another machine or leave it in the current one.
1. Turn off the machine.
1. Boot it up.
1. Follow install steps. In particular:
    1. Select to **encrypt** hard drive with a password.
    1. Choose **US** language.


## 2. System config

Once logged in, set these up:

- Connect to WiFi.
- Power manager under settings.
    - Turn on _notifications_ and _tray icon_.
- Setup network
    - Edit `/etc/hosts` and setup the machines. This can happen later when I need it.
- Optionally disable requiring password for `sudo` commands.
    - Run `sudo visudo`.
    - Set this.
        ```
        %michael ALL=(ALL) NOPASSWD:ALL
        ```

## 3. Install

### Setup browser

- Install Firefox if not installed already. Using `firefox` APT package or Brew cask.
- Setup Firefox settings.
- Install LastPass - [link](https://addons.mozilla.org/en-US/firefox/addon/lastpass-password-manager/).
- Setup Firefox sync.
    - Login using password in LastPass.
    - Remaining extensions will be installed using sync.

### Install packages

Follow instructions in this OS Genesis project to install dev packages (like Python and Ruby) and shell tools.

1. Follow [install](../installation.md) page.
2. Follow the main [usage](../usage.md) steps.
    ```sh
    $ make install
    ```

Be sure to keep that up to date as new packages are installed i.e. Run `git pull` and rerun the script.

See also on _Linux Lite - Software installer_ GUI (a few packages) or package manager (many packages) or `apt`.

### Install additional packages

These are from the Software installer GUI and some are covered in the `make install` command already.

- Etcher
    - `balena-etcher-electron/unknown 1.5.95 amd64`
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

### Setup start on boot commands

To ensure software starts on startup (like `yakuake`), set these up under Settings.

For Linux Lite, go to Sessions and Startup in the start menu.


## 4. Configure for development

### SSH

Follow my cookbook page to setup SSH on your machine from scratch and configure SSH access on your GitHub account:

- [GitHub SSH Access](https://github.com/MichaelCurrin/code-cookbook/blob/master/recipes/shell/ssh/github-ssh-access.md)

You'll need some IDE to set that up. Like `nano` or `vim`.

### Shell config setup

This is my **private** repo.

```sh
$ mkdir -p repos
$ git clone git@github.com:MichaelCurrin/shell-dev-setup.git
$ cd shell-dev-setup
```

Then follow the README.

Put off doing commits until that it setup so that git config has email and username.


## 5. Install IDEs

### Terminal

Make sure you have `vim` and `nano` installed.

### VS Code

#### Install

VS Code is not available by default in APT packages.

See [Manage VS Code](manage-vs-code.md) doc for how to install and upgrade VS Code.

#### Extensions

1. Sign in.
2. Turn on syncing of extensions and other settings.

For breakdown of extensions and what they do, see my [gist](https://gist.github.com/MichaelCurrin/e1f0b488d4ed8e6c24646e37c75fe2ea).

### PyCharm

#### Install

Follow instructions on the [Download](https://www.jetbrains.com/pycharm/download/) page.
