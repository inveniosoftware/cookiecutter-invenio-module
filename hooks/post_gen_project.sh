#!/bin/bash

chmod a+x run-tests.sh

echo "-------------------------------------------------------------------------------"
echo
echo "Skeleton generated."

echo "Please fix the following TODOs before you use the generated files:"
grep --color=always --recursive --context=3 --line-number TODO .

rm -r misc/


# Create the docker templates


python_versions='{{cookiecutter.python_versions}}'
python_versions=(${python_versions//,/ })
for version in "${python_versions[@]}"; do
    full_version="python${version: -1}${version: -2:1}"
    cat > "tests/Dockerfile.${version}" <<EOD
FROM ${full_version}
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
RUN pip install --upgrade tox
WORKDIR /code
EOD
done
