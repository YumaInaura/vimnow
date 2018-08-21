#!/bin/bash -eu

source ./test/prepare/before.sh

./bin/vimnow >/dev/null
./bin/vimnow --sh >/dev/null

readonly list_result=$(./bin/vimnow --list)
readonly list_num=$(echo "$list_result" | wc -l | sed 's/ *//g')

if test $list_num = 2; then
  echo "[OK] --list result num checked ( $list_num )"
else
  echo "test list failed"
  exit 1
fi

source ./test/prepare/after.sh
