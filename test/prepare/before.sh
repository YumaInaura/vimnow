#!/bin/bash -eu

readonly test_save_dir=~/tmp/vimnow/test
export VIMNOW_PATH="$test_save_dir"

rm -rf ~/tmp/vimnow/test # Do not use variable because missing remove is so dangerous

unalias -a

# For Mac OS
if [ $(uname) = 'Darwin' ]; then
  which gstat >/dev/null || brew install coreutils
  alias stat='gstat'
  which gdate >/dev/null || brew install coreutils
  alias date='gdate'
fi

shopt -s expand_aliases
alias vim="echo 'VIM EDITING'; echo"

