#!/bin/bash
ST=0
while [[ $ST -eq 0 ]]; do
        rm -rf /var/cache/mod_pagespeed/*
        if [[ -d /var/cache/mod_pagespeed/* ]]
                then
                ST=0
        else
                ST=1
        fi
    sleep 5
done
touch borrarcache.txt
TODAY=$(date)
echo "Borrado el: $TODAY" >> borrarcache.txt
mv borrarcache.txt /var/www/html/ -f
