#!/bin/bash -eu

curl -H 'Cache-Control: no-cache' -o .vimnow_donwnload https://raw.githubusercontent.com/YumaInaura/vimnow/master/bin/vimnow

chmod +x .vimnow_donwnload

mv .vimnow_donwnload /usr/local/bin/vimnow

echo "vimnow installed"
