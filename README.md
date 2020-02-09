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

First, edit the inventory file as described in `inventory.ini.dist`.
```
$ mv inventory.ini.dist production.ini
```

Then, play `make ssh` if it's the first time you are playing this recipe.
It will configure ssh with public/private keys for your current user.

See `make help` for more usage.

## Roadmap

[x] The first time, run certbot to issue an ssl certificate
[x] Generate a Diffie–Hellman key exchange file
[x] Set up a cron job for certbot renewal
