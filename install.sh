#!/bin/bash -eu

readonly github_code_base_url='https://raw.githubusercontent.com/YumaInaura/vimnow/master/'

readonly download_tmp_dir="$HOME"/.vimnow_download

# Download bin
mkdir -p "$download_tmp_dir"/bin
curl -o "$download_tmp_dir"/bin/vimnow "$github_code_base_url"/bin/vimnow?$((RANDOM))$((RANDOM))
chmod +x "$download_tmp_dir"/bin/vimnow

# Download lib
mkdir -p "$download_tmp_dir"/lib
curl -o "$download_tmp_dir"/lib/.setting "$github_code_base_url"/bin/.setting?$((RANDOM))$((RANDOM))
chmod +x "$download_tmp_dir"/lib/.setting

# Create home dir
readonly vimnow_home_dir="$HOME"/vimnow
mkdir -p "$vimnow_home_dir"

# Install bin
rm -rf "$HOME"/vimnow/bin
cp -rf "$download_tmp_dir"/bin "$vimnow_home_dir"

# Install bin
rm -rf "$HOME"/vimnow/lib
cp -rf "$download_tmp_dir"/lib "$vimnow_home_dir"

# Link command to PATH
readonly command_path=/usr/local/bin/vimnow
rm -f "$command_path"
ln -s "$HOME"/vimnow/bin/vimnow "$command_path"

# Create data directory
mkdir -p "$vimnow_home_dir"/save

echo "vimnow installed"

