#!/usr/bin/env bash

certbot certonly --non-interactive --agree-tos --email queicherius@gmail.com --webroot -w /etc/letsencrypt/webroot -d gw2ef.com -d www.gw2ef.com
