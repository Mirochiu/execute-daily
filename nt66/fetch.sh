#!/usr/bin/env bash

echo "fetching nt66..."
curl --silent --connect-timeout 10 'https://nt66mobile.com.tw/' >  "nt66-$(date +'%Y%m%d').html"