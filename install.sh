#!/bin/bash -eu

readonly github_code_base_url='https://raw.githubusercontent.com/YumaInaura/vimnow/master/bin/vimnow'

readonly download_tmp_dir="$HOME"/.vimnow_download

mkdir -p "$download_tmp_dir"/bin
mkdir -p "$download_tmp_dir"/lib

curl -o "$download_tmp_dir"/.vimnow_donwnload "$github_code_base_url"?$((RANDOM))$((RANDOM))

chmod +x "$download_tmp_dir".vimnow_donwnload

mv "$download_tmp_dir".vimnow_donwnload /usr/local/bin/vimnow

readonly vimnow_home="$HOME"/vimnow
mkdir -p "$vimnow_home"
mkdir -p "$vimnow_home"/save

rm -rf "$HOME"/vimnow/bin
cp -rf "$download_tmp_dir"/bin "$vimnow_home"

rm -rf "$HOME"/vimnow/lib
cp -rf "$download_tmp_dir"/lib "$vimnow_home"

echo "vimnow installed"

