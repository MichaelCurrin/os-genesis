# Manage VS Code
> Install and upgrade VS Code IDE


## Download from website

Go to the [Download](https://code.visualstudio.com/Download) page of the VS Code docs. It has resources if you need info.

Click the `.deb` button.

You'll be prompted to download the file of about 60MB.

Run with the recommended Debian package installer.

Click _Install package_.


## Install as a deb package

- [Linux setup](https://code.visualstudio.com/docs/setup/linux) in VS Code docs.

Download the `.deb` file.

```sh
$ cd ~/Downloads
$ wget 'https://go.microsoft.com/fwlink/?LinkID=760868'
$ ls
```

If you system is configured right you can double-click on the file, or choose to _Open with..._ and choose a Debian package manager.

Or this with the path to the `.deb` file.

```sh
$ sudo apt install DEB_FILE
```

Installing theat`.deb` package will automatically install the APT repository and signing key. That will enable auto-updating using the system's package manager, as covered next.


## Upgrade

On Linux, you can't update in VS Code itself like you can on macOS. VS Code prompts you to update and you click the button, it will take you to the website to download and follow the steps from above. But that is not necessary. Rather use that as a sign to upgrade a package manager.

### Package Manager GUI

Use your Package Manager tool and find `code` installed programs and mark it as upgradeable.

### Command-line

_Warning: Avoid running the upgrade command inside VS Code's own terminal. As that would would quit VS Code before all updates are done._

Use `apt`.

```sh
$ sudo apt upgrade code
```

Note whenever you do a system update like this, VS Code will also be included.

```sh
$ sudo apt upgrade
```

Or within this OS Genesis project:

```sh
$ make upgrade
```
