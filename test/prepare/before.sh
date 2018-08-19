#!/bin/bash -eu

readonly test_save_dir=~/tmp/vimnow/test
export VIMNOW_PATH="$test_save_dir"

rm -rf ~/tmp/vimnow/test # Do not use variable because missing remove is so dangerous

# For Mac OS
if [ $(uname) = 'Darwin']; then
  alias stat='gstat'
  alias date='gdate'
  alias tee='gtee'
  alias split='gspit'
fi

shopt -s expand_aliases
alias vim="echo 'VIM EDITING'"

