#!/bin/bash -eu

source ./test/prepare/before.sh

readonly filepath=$(./bin/vimnow --sh)

readonly files=$(ls "$test_save_dir" | grep '\.sh')

test $(echo "$files" | wc -l) = 1 && echo OK

test $(stat -c '%a' "$filepath") == '755' && echo OK

[[ "$filepath" =~ \.sh ]] && echo OK

source ./test/prepare/after.sh
