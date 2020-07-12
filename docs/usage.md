# Usage

Navigate to the project root.


## CLI

Run the `gen` script, which runs scripts in the [genesis](/genesis) directory.

```sh
$ ./gen --help
```

Usage and available commands will be shown.

TODO: If added to `~/bin` or similar, this can be run from anywhere. - This is not ready yet as the script needs to know its own path to execute from.


### Configure, install and update
> Commands which change the state of the system and packages

Follow the steps below in order. Note - no `.sh` is needed.

Configure Debian package sources - [configure.sh](.genesis/configure.sh).

```sh
$ ./gen configure
```

Install APT packages - [install.sh](/genesis/install.sh)

```sh
$ ./gen install
```

Install optional packages - [optional.sh](/genesis/optional.sh)

```sh
$ ./gen optional
```

These are intended for a fresh install but they can be run repeatedly if needed, such as if this scripts are updated or something that was uninstalled manually needs to be installed again.

## Checks

Run these at any time as they only read data.

Update _all_ APT packages.

```sh
$ ./gen upgrade
```

Clear space in the APT cache and autoremove unneeded packages.

```sh
$ ./gen clean
```

Check installed versions of packages of interest.

```sh
$ ./gen audit
```

## Install IDE

Follow [Install VS Code](/docs/install-vs-code.md) guide to install from a Debian package.

Updates to VS Code can be managed from within the application after that.


## Schedule tasks
> How to schedule cron jobs to run CLI commands

<!-- This could be moved to a separate section even as Configure, but it must follow Usage/CLI -->

Tasks to add to your to `cron.daily` directory or your `crontab` file.

Either add `gen` to yaour bin executables directory, or use the full path to the executable.

### Manage packages

Add a cron task to ensure that installed packages are updated on schedule without your interaction needed - note there is a risk of things breaking. 

If your system gives a pop-up prompt to update packages, you may prefer to use that.

<!-- TODO: git pull, or checkout latest tag, both as options, ideally through gen CLI -->

```sh
gen install
```

If you want this too:

```sh
gen install-optional
```

### Update package versions

Add a cron task to run certain project scripts to ensure the system's packages and configuration matches what is in the latest GitHub release.

```sh
gen upgrade
```

Or this.

```sh
gen upgrade-full
```
