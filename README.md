# Composer for CI

This image uses the official Composer Image 2.8.5.

## How to use this image
Run the composer image:

```bash
docker run \
    --rm \
    --interactive \
    --tty \
    --volume "$(pwd)":/app \
    finalgene/composer install
```

You can mount the Composer home directory from your host inside the Container to share caching and configuration files:

```bash
docker run \
    --rm \
    --interactive \
    --tty \
    --volume "$(pwd)":/app \
    --volume ${COMPOSER_HOME}:/cache/.composer \
    finalgene/composer install
```

By default, Composer runs as root inside the container. This can lead to permission issues on your host filesystem. You can run Composer as your local user:

```bash
docker run \
    --rm \
    --interactive \
    --tty \
    --volume "$(pwd)":/app \
    --user $(id -u):$(id -g) \
    finalgene/composer install
```

For further information have a look at the [official composer image](https://hub.docker.com/_/composer/).

## Quick reference
* **Where to get help:**
[the Docker Community Forums](https://forums.docker.com), [the Docker Community Slack](https://blog.docker.com/2016/11/introducing-docker-community-directory-docker-community-slack), or [Stack Overflow](https://stackoverflow.com/search?tab=newest&q=docker)

* **Where to file issues:**
https://github.com/finalgene/docker-hub-composer/issues

* **Maintained by:**
[The final gene Team](https://github.com/finalgene)

* **Source of this description:**
[Repository README.md](https://github.com/finalgene/docker-hub-composer/blob/master/README.md)
