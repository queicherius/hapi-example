#!/bin/sh

certbot renew --agree-tos -a webroot --webroot-path=/etc/letsencrypt/webroot
