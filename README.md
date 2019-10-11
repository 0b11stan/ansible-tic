# ansible-tic


## Description

I use ansible to deploy docker on a centos box.
Then, I use docker via ansible to deploy every other services

Architecture:
```
      +---------------+
      | reverse proxy |
      +---------------+
              |
      +----------------+
      |                |
+-----------+    +----------+
| nextcloud |    | web site |
+-----------+    +----------+
      |
 +----------+
 | database |
 +----------+
```

## Usage

First, install required python packages:
```
$ python -m venv venv
$ source ./venv/bin/activate
$ pip install -r requirements.txt
```

Then, set the following environnement variables:
* `DATABASE_ROOT_PASSWORD`
* `DATABASE_PASSWORD`
