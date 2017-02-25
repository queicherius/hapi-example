#!/usr/bin/env bash

certbot renew --agree-tos -a webroot --webroot-path=/etc/letsencrypt/webroot
