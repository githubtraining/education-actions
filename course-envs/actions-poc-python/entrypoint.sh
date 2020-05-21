#!/bin/bash

mv "$GITHUB_WORKSPACE/$2" /tests

ERROR_FILE="$(</errors/$1.md)"
echo ERROR_FILE
ERROR_FILE="${ERROR_FILE//'%'/'%25'}"
ERROR_FILE="${ERROR_FILE//$'\n'/'%0A'}"
ERROR_FILE="${ERROR_FILE//$'\r'/'%0D'}"

echo "::set-output name=error::$ERROR_FILE"

pytest /tests/$1.py





