#!/bin/bash -eu

source ./test/prepare/before.sh

readonly first_filepath=$(./bin/vimnow)
readonly second_filepath=$(./bin/vimnow --continue)

if [ "$first_filepath" = "$second_filepath" ]; then
  echo [OK] Two same file has edited : "$first_filepath" and "$second_filepath"
else
  echo [OK] Two different file has edited :  "$first_filepath" and "$second_filepath"
  exit 1
fi

source ./test/prepare/after.sh

