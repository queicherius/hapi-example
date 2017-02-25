# How to request a new certificate

> This is for the domain `example.com`

1. Make sure the loadbalancer and this container are running.
2. Get the ID of this container by running `docker ps`.
3. Get a command line in the container `docker exec -it ID /bin/bash`.
4. Run `certbot certonly --non-interactive --agree-tos --email my@email.com --webroot -w /etc/letsencrypt/webroot -d example.com`.
5. Run `openssl dhparam -out /etc/letsencrypt/live/example.com/dhparam.pem 2048`.
6. Exit out of the container and make sure the certificate exists on the attached volume
7. Done!
