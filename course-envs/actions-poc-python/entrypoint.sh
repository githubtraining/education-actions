#!/bin/sh -l

mv "$GITHUB_WORKSPACE/$2" /tests

ERROR_FILE="$(cat /errors/$1.md)"
# ERROR_FILE="${ERROR_FILE//'%'/'%25'}"
# ERROR_FILE="${ERROR_FILE//$'\n'/'%0A'}"
# ERROR_FILE="${ERROR_FILE//$'\r'/'%0D'}"

echo "::set-output name=error::$ERROR_FILE"

pytest /tests/$1.py





