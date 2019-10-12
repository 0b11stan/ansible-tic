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

First, export the following environnement variables:
* `DATABASE_ROOT_PASSWORD`
* `DATABASE_PASSWORD`

Then, see `make help`.
