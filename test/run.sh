#!/bin/bash -eu

for test_file in $(find ./test/*.sh | grep -v 'run.sh'); do
  echo "======================="
  echo $test_file
  echo "======================="
  eval "$test_file "
done
