#!/usr/bin/env sh
{% include 'misc/header.py' %}

# TODO: Pass the services required by your module to the
# docker-services-cli e.g. `docker-services-cli up es postgresql redis`
docker-services-cli up
python -m pydocstyle {{ cookiecutter.package_name }} tests docs && \
python -m isort {{ cookiecutter.package_name }} tests --check-only --diff && \
python -m check_manifest --ignore ".travis-*" && \
python -m sphinx.cmd.build -qnNW docs docs/_build/html && \
python -m pytest
python -m sphinx.cmd.build -qnNW -b doctest docs docs/_build/doctest
tests_exit_code=$?
docker-services-cli down
exit "$tests_exit_code"
