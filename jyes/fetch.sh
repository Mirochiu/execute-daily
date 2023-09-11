#!/usr/bin/env bash

echo "fetching jyes..."
curl --silent --connect-timeout 10 'https://www.jyes.com.tw/product.php' > "jyes-$(date +'%Y%m%d').html"
