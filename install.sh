#!/bin/bash -eu

readonly github_code_base_url='https://raw.githubusercontent.com/YumaInaura/vimnow/master/bin/vimnow'
curl -o .vimnow_donwnload "$github_code_base_url"?$((RANDOM))$((RANDOM))

chmod +x .vimnow_donwnload

mv .vimnow_donwnload /usr/local/bin/vimnow

readonly vimnow_home="$HOME"/vimnow
mkdir -p "$vimnow_home"
mkdir -p "$vimnow_home"/save

rm -rf "$HOME"/vimnow/bin
cp -rf './bin' "$vimnow_home"

rm -rf "$HOME"/vimnow/lib
cp -rf './lib' "$vimnow_home"

echo "vimnow installed"

