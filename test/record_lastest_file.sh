#!/bin/bash -eu

source ./test/prepare/before.sh

./bin/vimnow

echo test_save_dir is "$test_save_dir"
test $(ls "${test_save_dir}/.latest_filepath") && echo OK

source ./test/prepare/after.sh
