#!/bin/bash -eu

source ./test/prepare/before.sh

source ./bin/vimnow --sh

readonly files=$(ls "$test_work_dir" | grep '\.sh')

test $(echo "$files" | wc -l) = 1 && echo OK

source ./test/prepare/after.sh
