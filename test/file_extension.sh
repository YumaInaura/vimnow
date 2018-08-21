#!/bin/bash -eu

source ./test/prepare/before.sh

readonly command_result=$(./bin/vimnow --sh)
readonly created_file_path="$command_result"

test "$(stat -c '%a' $created_file_path)" = '755' && echo OK

[[ "$created_file_path" =~ \.sh ]] && echo OK

source ./test/prepare/after.sh

