#!/bin/sh -l

mv "$GITHUB_WORKSPACE/$2" /tests

pip install --no-cache-dir pytest

pytest /tests/$1
