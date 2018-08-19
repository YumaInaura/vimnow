#!/bin/sh -eu

rm -rf ~/tmp/vimnow/test

export VIMNOW_PATH=~/tmp/vimnow/test

./bin/vimnow test

ls ~/tmp/vimnow/test

rm -rf ~/tmp/vimnow/test
