#!/bin/bash

rm -rf ~/tmp/vimnow/test

export VIMNOW_PATH=~/tmp/vimnow/test

shopt -s expand_aliases
alias vim="echo 'VIM EDITING'"

source ./bin/vimnow --sh

readonly files=$(ls ~/tmp/vimnow/test | grep '\.sh')

test $(echo "$files" | wc -l) = 1 && echo OK

rm -rf ~/tmp/vimnow/test
