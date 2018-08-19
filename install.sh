#!/bin/bash -eu

curl -o "$HOME"/.vimnow_donwnload https://raw.githubusercontent.com/YumaInaura/vimnow/master/bin/vimnow

chmod -x "$HOME"/.vimnow_donwnload

mv "$HOME"/.vimnow_donwnload /usr/local/bin

