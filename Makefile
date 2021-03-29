default: help

h help:
	@grep '^[a-z]' Makefile


i install:
	genesis/install.sh
	genesis/install-optional.sh
	genesis/config.sh

py:
	@echo 'Install and upgrade Python packages'
	genesis/py-packages.sh

u upgrade:
	# TODO split apt updates into separate script and choose full or not.
	genesis/upgrade.sh
	# genesis/upgrade-full.sh


c clean:
	genesis/clean.sh


list-apt:
	@echo 'Installed APT packages'
	sudo apt list --installed

list-py:
	@echo 'Installed PY packages'
	PIP_REQUIRE_VIRTUALENV=false python3 -m pip list

list-upgrade:
	@echo 'Upgradeable APT packages'
	sudo apt list --upgradeable
