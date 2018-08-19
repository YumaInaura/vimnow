#!/bin/bash -eu

version=$(./bin/vimnow --version)

[[ "$version" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]] && echo [OK] version is "$version"
