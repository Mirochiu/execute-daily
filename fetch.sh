#!/usr/bin/env bash

echo "fetch @ $(date +'%Y%m%d')"

curl 'https://www.coolpc.com.tw/evaluate.php' > "coolpc-$(date +'%Y%m%d')_big5.html"
iconv -f big5 -t utf-8 "coolpc-$(date +'%Y%m%d')_big5.html" > "coolpc-$(date +'%Y%m%d').html"
curl 'https://nt66mobile.com.tw/' >  "nt66-$(date +'%Y%m%d').html"
curl 'https://www.jyes.com.tw/product.php' > "jyes-$(date +'%Y%m%d').html"
curl 'https://www.landtop.com.tw/product_categories/phones' > "landtop-$(date +'%Y%m%d').html"