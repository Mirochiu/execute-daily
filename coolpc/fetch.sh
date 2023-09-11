#!/usr/bin/env bash

echo "fetching coolpc..."
big5file="coolpc-$(date +'%Y%m%d')_big5.html"
utf8file="coolpc-$(date +'%Y%m%d').html"
curl --silent --connect-timeout 10 'https://www.coolpc.com.tw/evaluate.php' > "$big5file"
# should be file and non-empty
if [ -f "$big5file" ]; then
    iconv -f big5 -t utf-8 "$big5file" > "$utf8file"
else
    echo 'icon fail'
    ls -l "$big5file"
fi
