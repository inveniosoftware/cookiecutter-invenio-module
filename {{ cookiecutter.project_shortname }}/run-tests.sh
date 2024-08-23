#!/usr/bin/env bash
{% include 'misc/header.py' %}

# Usage:
#   env DB=postgresql12 SEARCH=opensearch2 CACHE=redis MQ=rabbitmq ./run-tests.sh

# Quit on errors
set -o errexit

# Quit on unbound symbols
set -o nounset

# Always bring down docker services
function cleanup() {
    eval "$(docker-services-cli down --env)"
}
trap cleanup EXIT

python -m check_manifest
python -m sphinx.cmd.build -qnNW docs docs/_build/html
# TODO: Remove services below that are not neeed (fix also the usage note).
eval "$(docker-services-cli up --db ${DB:-postgresql} --search ${SEARCH:-opensearch} --cache ${CACHE:-redis} --mq ${MQ:-rabbitmq} --env)"
python -m pytest
tests_exit_code=$?
python -m sphinx.cmd.build -qnNW -b doctest docs docs/_build/doctest
exit "$tests_exit_code"
