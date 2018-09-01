#!/bin/bash -eux

readonly vimnow_home_dir="$HOME"/vimnow
mkdir -p "$vimnow_home_dir"

rm -rf "$vimnow_home_dir"/lib
cp -rf ./lib "$vimnow_home_dir"/lib

rm -f /usr/local/bin/vimnow
ln -s "$HOME"/vimnow/lib/vimnow /usr/local/bin/vimnow

# Create data directory
mkdir -p "$vimnow_home_dir"/save

echo "vimnow installed"

vimnow --version

