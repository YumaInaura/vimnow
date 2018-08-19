#!/bin/bash -eu

readonly test_work_dir=~/tmp/vimnow/test
export VIMNOW_PATH="$test_work_dir"

rm -rf ~/tmp/vimnow/test # Do not use variable because missing remove is so dangerous

shopt -s expand_aliases
alias vim="echo 'VIM EDITING'"

