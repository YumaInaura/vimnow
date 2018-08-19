#!/bin/bash -eu

curl -o .vimnow_donwnload 'https://raw.githubusercontent.com/YumaInaura/vimnow/master/bin/vimnow?'$((RANDOM))$((RANDOM))

chmod +x .vimnow_donwnload

mv .vimnow_donwnload /usr/local/bin/vimnow

echo "vimnow installed"
