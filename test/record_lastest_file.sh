#!/bin/bash -eu

source ./test/prepare/before.sh

source ./bin/vimnow

test $(ls "${test_save_dir}.latest_filepath") && echo .latest_filepath created

source ./test/prepare/after.sh
