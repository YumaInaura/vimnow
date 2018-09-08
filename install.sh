#!/bin/bash -eux

readonly vimnow_home_dir="$HOME"/vimnow
mkdir -p "$vimnow_home_dir"

rm -rf "$vimnow_home_dir"/lib
cp -rf ./lib "$vimnow_home_dir"/lib

rm -f /usr/local/bin/vimnow
ln -s "$HOME"/vimnow/lib/vimnow /usr/local/bin/vimnow

if [ $(uname) = 'Darwin' ]; then
  rm -rf "$vimnow_home_dir"/mac
  cp -rf ./mac "$vimnow_home_dir"/mac
fi

# Create data directory
mkdir -p "$vimnow_home_dir"/save

echo "vimnow installed"

vimnow --version

vimnow --git-init
