# docker-apache-php-fpm

A Dockerfile that installs the latest apache with PHP.

NB: A big thanks to [jbfink](https://github.com/jbfink/docker-wordpress) who did most of the hard work on the wordpress parts!

## Installation

The easiest way to get this docker image installed is to pull the latest version
from the Docker registry:

```bash
$ docker pull stormerider/docker-apache-php
```

If you'd like to build the image yourself then:

```bash
$ git clone https://github.com/stormerider/docker-apache-php.git
$ cd docker-apache-php
$ sudo docker build -t="stormerider/docker-apache-php" .
```

## Usage

To spawn a new instance of wordpress on port 80.  The -p 80:80 maps the internal docker port 80 to the outside port 80 of the host machine.

```bash
$ sudo docker run -p 80:80 --name docker-apache-php -d stormerider/docker-apache-php
```

Start your newly created docker.

```
$ sudo docker start docker-apache-php
```

After starting the docker-apache-php check to see if it started and the port mapping is correct.  This will also report the port mapping between the docker container and the host machine.

```
$ sudo docker ps

0.0.0.0:80 -> 80/tcp docker-apache-php
```

You can the visit the following URL in a browser on your host machine to get started:

```
http://127.0.0.1:80
```
