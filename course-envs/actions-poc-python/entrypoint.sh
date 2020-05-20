#!/bin/sh -l

mv "$GITHUB_WORKSPACE/$2" /tests

pytest /tests/$1
