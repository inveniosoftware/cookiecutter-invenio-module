#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2023 CERN.
# SPDX-License-Identifier: MIT

# quit on errors:
set -o errexit

# quit on unbound symbols:
set -o nounset

WORKDIR=$(mktemp -d)

function finish {
    echo "Cleaning up."
    pip uninstall -y generated_fun
    rm -rf "${WORKDIR}"
}

trap finish EXIT

sphinx-build -qnN docs docs/_build/html
cookiecutter --no-input -o "$WORKDIR" . project_name=Generated-Fun

cd "${WORKDIR}/generated-fun"

git init
git add -A

pip install -e .\[tests,opensearch2\] --quiet

mkdir generated_fun/translations
python setup.py extract_messages
python setup.py init_catalog -l en
python setup.py compile_catalog
git add -A

check-manifest -u || true

./run-tests.sh
