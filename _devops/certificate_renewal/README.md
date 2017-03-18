# How to request a new certificate

> This walkthrough is for the domain `example.com` and the email `my@email.com`, change according to your use case.

1. Make sure the loadbalancer and this container are running on the host.
1. Make sure that `/data/letsencrypt/live` and `/data/letsencrypt/webroot` exist on the host.
1. Get the `ID` of this container by running `docker ps`.
1. Get a command line in the container `docker exec -it ID sh`.
1. Run `certbot certonly --non-interactive --agree-tos --email my@email.com --webroot -w /etc/letsencrypt/webroot -d example.com`.
1. Run `openssl dhparam -out /etc/letsencrypt/live/example.com/dhparam.pem 2048`.
1. Exit out of the container and make sure the certificate exists on the attached volume.
1. Done!
