#!/bin/bash -eu

source ./test/prepare/before.sh

readonly created_script_file_path=$(./bin/vimnow --sh)
readonly created_non_script_file_path=$(./bin/vimnow)

readonly script_file_permission=$(stat -c '%a' "$created_script_file_path")

if [ "$script_file_permission" = '755' ]; then
  echo "[OK] Script file has execute permission $script_file_permission"
else
  echo "[NG] Script file has no execute permission $script_file_permission"
  exit 1
fi

if [[ "$created_script_file_path" =~ \.sh$ ]]; then
  echo "[OK] Script file has file extension"
else
  echo "[NG] Script file has no file extension"
fi

if [ "$(stat -c '%a' $created_non_script_file_path)" = '644' ]; then
  echo "[OK] Non script file has read permission"
else
  echo "[NG] Non script file has not expected read permisson"
  exit 1
fi

if [[ ! "$created_non_script_file_path" =~ \.[a-zA-z]+$ ]]; then
  echo "[OK] Non script file has no file extension"
else
  echo "[NG] Non script file has file extension"
fi

source ./test/prepare/after.sh

