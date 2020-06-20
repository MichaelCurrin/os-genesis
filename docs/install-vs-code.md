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

https://code.visualstudio.com/docs/setup/linux
 

Download .deb file

```sh
cd ~/Downloads 
wget 'https://go.microsoft.com/fwlink/?LinkID=760868'
ls ~/Downloads
```

Then run 
```sh
$ sudo apt install ./<file>.deb
```

Installing the .deb package will automatically install the apt repository and signing key to enable auto-updating using the system's package manager.
