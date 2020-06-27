# Install VS Code


## Install with GUI

Go to:

- https://code.visualstudio.com/Download

Click the `.deb` button.

You'll be prompted to download the file of about 60MB.

Run with the recommended Debian package installer.

Click Install package.

Here's the download thank you page / getting started page. It has resources but also prompts you to download each time.

- https://code.visualstudio.com/Download#


## Install with command-line

- https://code.visualstudio.com/docs/setup/linux
 

Download `.deb` file

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

Installing the `.deb` package will automatically install the apt repository and signing key to enable auto-updating using the system's package manager.


## Update

Unfortunately when VS Code prompts you go update, it will take you to the website to download and follow the steps from above. But that is not necessary.

Use your Package Manager GUI and find `code` installed programs and mark it as upgradeable.

Or use `apt`:

```sh
$ sudo apt upgrade code
```

Note whenever you do a system update like this, VS Code will also be included.

```sh
$ sudo apt upgrade
```
