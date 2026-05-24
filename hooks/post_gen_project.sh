#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2015-2023 CERN.
# SPDX-License-Identifier: MIT

echo "-------------------------------------------------------------------------------"
echo
echo "Skeleton generated."

echo "Please fix the following TODOs before you use the generated files:"
grep --color=always --recursive --context=3 --line-number TODO .

rm -r misc/
