#!/bin/bash -eu

source ./test/prepare/before.sh

source ./bin/vimnow --sh

readonly files=$(ls "$test_save_dir" | grep '\.sh')

test $(echo "$files" | wc -l) = 1 && echo OK

readonly latest_filepath=$(cat "${test_save_dir}/.latest_filepath")
test $(stat -c '%a' "$latest_filepath") == '755' && echo OK

[[ "$latest_filepath" =~ \.sh ]] && echo OK

source ./test/prepare/after.sh
