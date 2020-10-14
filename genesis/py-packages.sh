#!/usr/bin/env bash

set -e

echo 'Install / upgrade global Python packages'
# Note that defaulting to latest version is not always appropriate because of dependencies
# between packages (e.g. pylint 2.5.3 needs older isort).
# Having a requirements doesn't seem to make these easier (maybe it does for some checks)
# Still, a .txt file is more of a known pattern than using shell commands.

PIP_REQUIRE_VIRTUALENV=false
python3 -m pip install --upgrade -r genesis/requirements-global.txt
