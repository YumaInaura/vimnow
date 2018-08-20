#!/bin/bash -eu

source ./test/prepare/before.sh

readonly filepath=$(./bin/vimnow example.txt)

readonly list_result=$(./bin/vimnow --list | grep example.txt)

[ ! -z "$list_result" ] && echo OK "$list_result"

source ./test/prepare/after.sh

