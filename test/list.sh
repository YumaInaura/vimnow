#!/bin/bash -eu

source ./test/prepare/before.sh

./bin/vimnow
./bin/vimnow --sh

list_result=$(./bin/vimnow --list)
test $(echo "$list_result" | wc -l) == 2 && echo [OK] --list result num matched

source ./test/prepare/after.sh
