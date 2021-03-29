default: help

h help:
	@grep '^[a-z]' Makefile


.update-apt:
	sudo apt update


# Install

config:
	genesis/config.sh

install-apt: .update-apt
	@echo 'Install packages managed by APT'
	genesis/apt/install.sh
	genesis/apt/install-optional.sh

install-other:
	@echo 'Install other packages - not managed by APT'
	genesis/other/install.sh

py:
	@echo 'Install / upgrade global Python packages'
	PIP_REQUIRE_VIRTUALENV=false \
		python3 -m pip install --upgrade -r genesis/other/requirements-global.txt

install: config install-apt install-other py


# Upgrade

apt-upgrade: .update-apt
	@echo 'Upgrading APT packages'
	sudo apt upgrade -y -q

apt-upgrade-dry:
	@echo 'Listing upgradeable APT packages'
	sudo apt list --upgradeable

apt-upgrade-full: .update-apt
	@echo 'Full APT upgrade'
	# More aggressive. Performs the function of upgrade but will remove currently installed packages
	# if this is needed to upgrade the system as a whole.
	sudo apt full-upgrade -y

pkg-upgrade:
	@echo 'Upgrade language-specific global packages'
	genesis/upgrade.sh

u upgrade: apt-upgrade pkg-upgrade


# Clean

c clean:
	@echo 'Clean packages'
	sudo apt autoremove -y
	sudo apt clean


# Informative.

audit:
	genesis/audit.sh

list-apt:
	@echo 'Installed APT packages'
	sudo apt list --installed

list-py:
	@echo 'Installed PY packages'
	PIP_REQUIRE_VIRTUALENV=false python3 -m pip list
