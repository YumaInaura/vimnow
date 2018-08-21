#!/bin/bash -eu

export VIMNOW_PATH=./test
export VIMNOW_LIB_PATH=./lib
export TEST_MODE=true
export VIMNOW_VIM_PATH=./test/bin/vim

rm -rf "$VIMNOW_PATH"/save # Do not use variable because missing remove is so dangerous

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
