#!/bin/bash -eu

basedir=$(dirname "$0")

for test_file in $(find "${basedir}" -name "*.sh" -maxdepth 1 | grep -v 'run.sh'); do
  echo "======================="
  echo $test_file
  echo "======================="
  eval "$test_file "
done
