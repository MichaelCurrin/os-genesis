# Setup steps

Notes on reliably setting up a new laptop or fresh OS install using my preferred order of steps and software.

This guide is for **Linux**. See also my [macOS Reference](mac-os.md) page.


## 1. Install new operating system

1. Set up a machine to handle downloading and writing of an OS image on a device. This could be the same or different machine that you are targeting.
    1. Choose your preferred Linux distro.
    1. Download your ISO image. Make sure you choose the correct architecture.
    1. Choose your approach for writing to a device.
        - The Linux Mint site recommends [Etcher][]. Check your architecture using [uname][] command so you download the right version, or use your system's package manager.
    1. Write the image to a DVD-R or empty flash drive. At least 4GB is needed probably and you'll overwrite what was on there.
1. Set the target machine with the new OS.
    1. Insert the device into the machine which you want write over.
    1. Turn off the machine.
    1. Boot it up.
    1. Follow install steps. In particular:
        - You want to play around with the OS before installing it.
        - Choose whether you want to overwrite the system or keep it in dual-boot (so you can switch between Linux and Windows any time).
        - Select the option to **encrypt** your hard drive with a password. This adds security so you need to add this password when rebooting the machine.
        - Choose language such as **US**.

[uname]: https://michaelcurrin.github.io/dev-cheatsheets/cheatsheets/shell/commands/uname.html
[Etcher]: https://www.balena.io/etcher/


## 2. Configure system

Once logged in, set these up:

- Connect to your WiFi.
- Set up power manager under settings.
    - Turn on _notifications_ and _tray icon_.
- Set up network
    - Edit `/etc/hosts` and set up machines on the home work. This can happen later when needed.
- Optionally disable the need for password when running `sudo` commands.
    1. Run `sudo visudo`.
    1. Set this with your username. e.g.
        ```
        %michael ALL=(ALL) NOPASSWD:ALL
        ```


## 3. Install

### Set up a browser

1. Install Firefox, if not installed already. Use your system's package manager GUI or install `firefox` through APT or Brew cask.
1. Install LastPass extension - to go [link](https://addons.mozilla.org/en-US/firefox/addon/lastpass-password-manager/).
1. Set up Firefox sync.
    - Login using the password in LastPass.
    - The settings and other extensions will be installed using sync.

### Install packages

Follow instructions in this OS Genesis project to install dev packages (like Python and Ruby) and shell tools.

1. Follow the [install](../installation.md) page.
1. Install packages as per [usage](../usage.md) steps.
    ```sh
    $ make install
    ```

Be sure to keep that up to date as new packages are installed i.e. Run `git pull` and rerun the script.

See also on _Linux Lite - Software installer_ GUI (a few packages) or package manager (many packages) or `apt`.

### Install additional packages

These are from the Software installer GUI and some are covered in the `make install` command already.

- [Etcher][]
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

### Set up start-on-boot commands

To ensure software starts on startup (like `yakuake`), set these up under Settings.

For Linux Lite, go to Sessions and Startup in the start menu.


## 4. Configure for development

### SSH

Follow my cookbook page to setup SSH on your machine from scratch and configure SSH access on your GitHub account:

- [GitHub SSH Access](https://github.com/MichaelCurrin/code-cookbook/blob/master/recipes/shell/ssh/github-ssh-access.md)

You'll need some editor to set that up. Like `nano` or `vim`.

### Shell config setup

Set up configs like `.bashrc`, git config, and aliases.

Two options below.

#### Public repo

Go here:

- https://github.com/MichaelCurrin/dotfiles

Set up your configs based on that.

#### Private repo

I have another repo which is kept more up to date and has more details. It is kept private though in case I need to have work-related variables in there like names of servers.

Skip this step if you are not MichaelCurrin.

1. Clone:
    ```sh
    $ mkdir -p repos
    $ git clone git@github.com:MichaelCurrin/shell-dev-setup.git
    $ cd shell-dev-setup
    ```
1. Follow the README.

Put off doing any Git commits until that is setup first, so that the Git config will have email and username.


## 5. Install IDEs

### VS Code

#### Install

VS Code is not available by default in APT packages.

See [Manage VS Code](manage-vs-code.md) doc for how to install and upgrade VS Code.

#### Extensions

1. Sign in.
1. Turn on syncing of extensions and other settings.

For breakdown of extensions and what they do, see my [gist](https://gist.github.com/MichaelCurrin/e1f0b488d4ed8e6c24646e37c75fe2ea).

### PyCharm

#### Install

Follow instructions on the [Download](https://www.jetbrains.com/pycharm/download/) page.
