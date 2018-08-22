#!/bin/bash -eu

readonly github_code_base_url='https://raw.githubusercontent.com/YumaInaura/vimnow/master/'

# Create home dir
readonly vimnow_home_dir="$HOME"/vimnow
mkdir -p "$vimnow_home_dir"

readonly download_tmp_dir="$HOME"/.vimnow_download
mkdir -p "$download_tmp_dir"
curl -o "$download_tmp_dir"/compress.gz "$github_code_base_url"/download/compress.gz?$(date +%s)

# Refresh libraries
cp "$download_tmp_dir"/compress.gz "$HOME"/vimnow/
pushd "$HOME"/vimnow/
  tar -xzf compress.gz
popd
rm "$HOME"/vimnow/compress.gz

# Link command to PATH
readonly command_path=/usr/local/bin/vimnow
rm -f "$command_path"
ln -s "$HOME"/vimnow/bin/vimnow "$command_path"

# Create data directory
mkdir -p "$vimnow_home_dir"/save

echo "vimnow installed"

vimnow --version

