FROM composer:2.8.5

LABEL maintainer="frank.giesecke@final-gene.de"

ENV COMPOSER_HOME=/cache/.composer

ENTRYPOINT ["sh", "-c", "set -- /docker-entrypoint.sh \"$@\"; exec \"$@\"", "--"]

CMD ["composer"]
