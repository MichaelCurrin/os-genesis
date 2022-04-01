# Manage VS Code
> Install and upgrade VS Code IDE


## Download from website

Go to the [Download](https://code.visualstudio.com/Download) page of the VS Code docs. It has resources if you need info.

Click the `.deb` button.

You'll be prompted to download the file of about 60MB.

Run with the recommended Debian package installer.

Click _Install package_.


## Install as a deb package

Installing the VS Code Debian package will automatically install the APT repository and signing key. That will enable auto-updating using the system's package manager, as covered next.

Download the `.deb` file and install it, based on [Linux setup](https://code.visualstudio.com/docs/setup/linux) in VS Code docs.

### CLI

```sh
$ cd ~/Downloads
$ wget 'https://go.microsoft.com/fwlink/?LinkID=760868' -O code.deb
```

```sh
$ sudo apt install ./code.deb
```

### GUI

1. Click on this link to start the download, based on the setup page:
    - [go.microsoft.com/fwlink/?LinkID=760868](https://go.microsoft.com/fwlink/?LinkID=760868)
1. Install it.
    - Double-click on the file. If not supported by default, click _Open with..._ and choose a Debian package manager.


## Upgrade

On Linux, you can't update in VS Code itself like you can on macOS. VS Code prompts you to update and you click the button, it will take you to the website to download and follow the steps from above. But that is not necessary. Rather use that as a sign to upgrade a package manager.

### Package Manager GUI

Use your Package Manager tool and find `code` installed programs and mark it as upgradeable.

### Command-line

_Warning: Avoid running the upgrade command inside VS Code's own terminal. As that would would quit VS Code before all updates are done._

Use `apt`.

```sh
$ sudo apt install code
...
The following packages will be upgraded:
  code
...
```

Or upgrade all APT packages.

```sh
$ make upgrade
```
