#!/bin/bash -eu

source ./test/prepare/before.sh

source ./bin/vimnow --sh

readonly files=$(ls ~/tmp/vimnow/test | grep '\.sh')

test $(echo "$files" | wc -l) = 1 && echo OK

source ./test/prepare/after.sh
