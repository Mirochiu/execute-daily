#!/usr/bin/env bash

echo "fetching landtop..."
curl --silent --connect-timeout 10 'https://www.landtop.com.tw/product_categories/phones' > "landtop-$(date +'%Y%m%d').html"