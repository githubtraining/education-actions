#!/bin/sh -l

mv "$GITHUB_WORKSPACE/$2" /tests

ERROR_FILE=$(cat /errors/$1.md)
echo "::set-output name=error::$ERROR_FILE" >> /devl/null

pytest /tests/$1.py
