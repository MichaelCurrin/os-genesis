# Usage

Commands are defined in [Makefile](/Makefile). See that file for more detailed commands or run:

```sh
$ make help
```

## Manage packages
> Commands which change the state of the system and packages

The install command should only need to be once and then followed by the upgrade command later.

```sh
$ make install
```

```sh
$ make upgrade
```

These are intended for a fresh install on a system, but they can both be run repeatedly if needed, such as if this scripts are changed, or something that was uninstalled manually needs to be installed again.

### Automation

I recommend **against** running the install or upgrade commands on a cron schedule.

Linux systems usually have a package manage GUI tool which can be setup to prompt you daily to upgrade packages.

Also, sometimes the APT tool's `upgrade` requires you explicitly approval upgrading and it will block the flow until you response. This approval cannot be done with a flag and must b done by hand when prompted with `y/N` prompt.


## Clean

Auto-remove unneeded packages and clear space in the APT cache and

```sh
$ make clean
```

Uses APT commands:

- `autoremove` - Remove automatically all unused packages.
- `clean` - Erase downloaded archive files (i.e. delete cache).

Note - this project will _not_ uninstall APT packages if they are removed from the install script, so you'll need to manually clean-up after packages are they removed.

```sh
sudo apt-get remove PACKAGE
```


## Checks

Run these at any time as they only read data.

Versions of CLI tools, if they are installed.

```sh
$ make audit
```

Installed packages.

```sh
$ make list-apt
$ make list-py
```

List upgradeable packages.

```sh
$ make apt-upgrade-dry
```


## Install IDE

Follow [Install VS Code](/docs/install-vs-code.md) guide to install from a Debian package.

Updates to VS Code can be managed from within APT after that.


## Python

Install or upgrade global Python packages.

```sh
$ make py
```

Note that defaulting to latest version is not always appropriate because of dependencies
between packages (e.g. pylint 2.5.3 needs older `isort`).

Having a requirements doesn't seem to make these easier (maybe it does for some checks)
Still, a .txt file is more of a known pattern than using shell commands.


### Note on Python package locations

On Unix-based systems, these install the current PY3 version's site packages such as here: ` /usr/local/lib/python3.9/site-packages`

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
