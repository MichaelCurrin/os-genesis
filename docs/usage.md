# Usage

Navigate to the project root.

TODO: Update this page to use [Makefile](/Makefile) instead.


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

Configure system [configure.sh](/genesis/config.sh). This script does not do a lot.

```sh
$ ./gen configure
```

Install APT packages - [install.sh](/genesis/install.sh)

```sh
$ ./gen install
```

That install command should only need to be once and then followed by the upgrade command later.

Run the install command again if you make additions to this repo and want to get those installed on a machine.

Note - this project will _not_ uninstall APT packages if they are removed from the install script, so you'll need to manually clean-up with `sudo apt-get remove PACKAGE` after packages are removed.

Install optional supporting packages - [optional.sh](/genesis/install-optional.sh)

```sh
$ ./gen install-optional
```

These are intended for a fresh install but they can be run repeatedly if needed, such as if this scripts are updated or something that was uninstalled manually needs to be installed again.

To upgrade To get the latest versions, run this:

```sh
$ ./gen upgrade
```

Or this:

```sh
$ gen upgrade-full
```


## Checks

Run these at any time as they only read data.

```sh
$ ./gen upgrade-list
```

Clear space in the APT cache and auto-remove unneeded packages.

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

Either add `gen` to your bin executables directory, or use the full path to the executable.

Upgrade packages.

```sh
$ gen upgrade
```

Warning - In some cases you have to accept explicitly. I've seen this before - the first time was an error and no
prompt and on a subsequent run I got the y/N prompt. Therefore upgrade `-y` is not safe to run on a
cron job as it might **block**.


## Python

Install or upgrade global Python packages.

```sh
$ gen py-packages
```

Note that defaulting to latest version is not always appropriate because of dependencies
between packages (e.g. pylint 2.5.3 needs older `isort`).
Having a requirements doesn't seem to make these easier (maybe it does for some checks)
Still, a .txt file is more of a known pattern than using shell commands.



## Note on Python package locations

On Unix-based systems, these install the current PY3 version's site packages  such as here: ` /usr/local/lib/python3.9/site-packages`

To make those executable, there are short entry points stored in `/usr/local/bin`.

Example:

- `/usr/local/bin/black`
    ```python
    #!/usr/local/opt/python/bin/python3.7
    # -*- coding: utf-8 -*-
    import re
    import sys
    from black import patched_main
    if __name__ == '__main__':
        sys.argv[0] = re.sub(r'(-script\.pyw|\.exe)?$', '', sys.argv[0])
        sys.exit(patched_main())
    ```
