default: help

h help:
	@grep '^[a-z]' Makefile


i install:
	genesis/install.sh
	genesis/install-optional.sh
	genesis/config.sh


u upgrade:
	# TODO split apt updates into separate script and choose full or not.
	genesis/upgrade.sh
	# genesis/upgrade-full.sh

c clean:
	genesis/clean.sh


list-i:
	genesis/install-list.sh

list-u:
	genesis/upgrade-list.sh


py:
	genesis/py-packages.sh
