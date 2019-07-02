#!/usr/bin/env bash

cd $(dirname "${BASH_SOURCE[0]}")
for file in $(ls *.po); do
    msgfmt $file -o $(echo $file | cut -d '_' -f1)/LC_MESSAGES/gcm-lang.mo
done