#!/bin/bash -eu

readonly test_save_dir=~/tmp/vimnow/test
export VIMNOW_PATH="$test_save_dir"
export TEST_MODE=true
export VIMNOW_LIBRALY_PATH=./lib

rm -rf ~/tmp/vimnow/test # Do not use variable because missing remove is so dangerous

# For Mac OS
if [ $(uname) = 'Darwin' ]; then
  # FIXME: Ask yes or no
  which gdate >/dev/null || brew install coreutils
  function date() {
    gdate $@
  }

  # FIXME: Ask yes or no
  which gstat >/dev/null || brew install coreutils
  function stat() {
    gstat $@
  }
fi
