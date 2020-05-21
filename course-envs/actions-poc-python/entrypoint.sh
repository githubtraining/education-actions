#!/bin/bash

mv "$GITHUB_WORKSPACE/$2" /tests

pytest /tests/$1.py || {

    cat /errors/$1.txt

    exit 1
}




