# ansible-tic

## Description

I use ansible to deploy docker on a centos box.
Then, I use docker via ansible to deploy every other services

Architecture:
```
                         +----------+
                     +---| web site |
 +---------------+   |   +----------+
 | reverse proxy |---+
 +---------------+   |   +-----------+   +----------+
                     +---| nextcloud |---| database |
                         +-----------+   +----------+
```

## Usage

First, edit the `inventory.ini` file as described in `inventory.ini.dist`.

Then, see `make help`.

## Roadmap

[x] The first time, run certbot to issue an ssl certificate
[x] Generate a Diffie–Hellman key exchange file
[x] Set up a cron job for certbot renewal
