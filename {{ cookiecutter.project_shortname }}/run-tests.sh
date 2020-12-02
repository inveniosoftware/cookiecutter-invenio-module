#!/usr/bin/env sh
{% include 'misc/header.py' %}

# Usage:
#   env DB=postgresql12 ES=es7 CACHE=redis MQ=rabbitmq ./run-tests.sh

# Quit on errors
set -o errexit

# Quit on unbound symbols
 set -o nounset

# Always bring down docker services
function cleanup {
    docker-services-cli down
}
trap cleanup EXIT

python -m check_manifest --ignore ".travis-*"
python -m sphinx.cmd.build -qnNW docs docs/_build/html
# TODO: Remove services below that are not neeed (fix also the usage note).
docker-services-cli up ${DB} ${ES:-es} ${CACHE:-redis} ${MQ:-rabbitmq}
python -m pytest
tests_exit_code=$?
python -m sphinx.cmd.build -qnNW -b doctest docs docs/_build/doctest
exit "$tests_exit_code"
