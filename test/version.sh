#!/bin/bash -eu

source ./test/prepare/before.sh

version=$(./bin/vimnow --version)

if [[ "$version" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo [OK] version is "$version"
else
  echo "version test failed"
  exit 1
fi

source ./test/prepare/after.sh

