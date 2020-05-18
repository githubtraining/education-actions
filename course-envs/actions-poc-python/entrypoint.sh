#!/bin/sh -l

mv "$GITHUB_WORKSPACE/$2" /usr/src/app

cd /usr/src/app

pwd 
pytest /usr/src/app/$1
