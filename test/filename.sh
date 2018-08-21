#!/bin/bash -eu

source ./test/prepare/before.sh

readonly filepath=$(./bin/vimnow example.txt)

readonly list_result=$(./bin/vimnow --list | grep example.txt)

if [ ! -z "$list_result" ]; then
  echo OK "$list_result"
else
  echo "filename test failed"
  exit 1
fi

source ./test/prepare/after.sh

