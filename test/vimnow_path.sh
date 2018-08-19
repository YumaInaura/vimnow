#!/bin/sh -eu

source ./test/prepare/before.sh

export VIMNOW_PATH=~/tmp/vimnow/test

./bin/vimnow

readonly files=$(ls ~/tmp/vimnow/test)

test $(echo "$files" | wc -l) = 1 && echo OK

source ./test/prepare/after.sh

