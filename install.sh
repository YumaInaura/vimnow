#!/bin/bash -eux

readonly vimnow_home_dir="$HOME"/vimnow
mkdir -p "$vimnow_home_dir"

rm -f /usr/local/bin/vimnow
cp -r ./bin/vimnow /usr/local/bin/vimnow

rm -rf "$vimnow_home_dir"/lib
cp -rf ./lib "$vimnow_home_dir"/lib

rm -rf "$vimnow_home_dir"/bin
cp -rf ./bin "$vimnow_home_dir"/bin

readonly command_path=/usr/local/bin/vimnow
rm -f "$command_path"
ln -s "$HOME"/vimnow/bin/vimnow "$command_path"

# Create data directory
mkdir -p "$vimnow_home_dir"/save

echo "vimnow installed"

vimnow --version

