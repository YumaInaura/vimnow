#!/bin/bash -eu

source ./test/prepare/before.sh

readonly command_result=$(./bin/vimnow --sh)
readonly created_file_path="$command_result"

readonly files=$(ls "$test_save_dir" | grep '\.sh')

test $(echo "$files" | wc -l) = 1 && echo OK

test $(stat -c '%a' "$created_file_path") == '755' && echo OK

[[ "$created_file_path" =~ \.sh ]] && echo OK

source ./test/prepare/after.sh

