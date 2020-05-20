#!/bin/sh -l

mv "$GITHUB_WORKSPACE/$2" /tests

ERROR_FILE=$(</errors/$1.md)

TEST_RESULT=$(pytest /tests/$1.py)

echo $TEST_RESULT

if [[ $TEST_RESULT == *"failed"* ]]; then

    echo "::set-output name=error::$ERROR_FILE"
fi


