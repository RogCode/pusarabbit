#!/bin/bash
sh /var/cache/pusakuy.com/borrar_pagespeed.sh > /dev/null 2>/dev/null &
chown -R apache:apache /var/www/html/*
cd /var/www/html/
find . -type d -exec chmod 755 {} \;
find . -type f -exec chmod 644 {} \;