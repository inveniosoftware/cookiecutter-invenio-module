#!/usr/bin/env sh
{% include 'misc/header.py' %}

# TODO: Pass the services required by your module to the
# docker-services-cli e.g. `docker-services-cli up es postgresql redis`
docker-services-cli up
pydocstyle {{ cookiecutter.package_name }} tests docs && \
isort {{ cookiecutter.package_name }} tests --check-only --diff && \
check-manifest --ignore ".travis-*" && \
sphinx-build -qnNW docs docs/_build/html && \
python -m pytest
tests_exit_code=$?
docker-services-cli down
exit "$tests_exit_code"
