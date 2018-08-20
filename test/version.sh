#!/bin/bash -eu

source ./test/prepare/before.sh

version=$(./bin/vimnow --version)

[[ "$version" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]] && echo [OK] version is "$version"

source ./test/prepare/after.sh

