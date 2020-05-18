#!/bin/bash

mv "$GITHUB_WORKSPACE/$2" /usr/src/app

cd /usr/src/app

pwd 
pytest $1
