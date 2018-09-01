#!/usr/bin/env bash -eux

readonly remote_compress_file_url="https://raw.githubusercontent.com/YumaInaura/vimnow/master/download/compress.gz?$(date +%s)"

readonly vimnow_home_dir="$HOME"/vimnow
mkdir -p "$vimnow_home_dir"

readonly download_dir="$HOME"/vimnow/download
mkdir -p "$download_dir"
curl -o "$download_dir"/compress.gz "$remote_compress_file_url"

