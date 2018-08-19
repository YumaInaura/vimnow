#!/bin/sh -eu

rm -rf ~/tmp/vimnow/test

export VIMNOW_PATH=~/tmp/vimnow/test

./bin/vimnow --test

readonly files=$(ls ~/tmp/vimnow/test)

test $(echo "$files" | wc -l) = 1 && echo OK

rm -rf ~/tmp/vimnow/test
