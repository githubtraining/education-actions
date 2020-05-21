#!/bin/bash

# copy user files to testing directory
mv "$GITHUB_WORKSPACE/$2" /tests
# run tests

# Get the result of pytest
# echo Pytest exited $?
# # if test success, move on
# # else comment failure with failure message
# PR_NUMBER=2
# ERROR_FILE="$(</errors/$1.md)"


# # -X POST -d '{"body": $ERROR_FILE}' \
# curl -s -H "Authorization: token ${INPUT_AUTH}" \
# -X POST -d '{"body": "${ERROR_FILE}"}' \
# "https://api.github.com/repos/${GITHUB_REPOSITORY}/issues/${PR_NUMBER}/comments"

# ERROR_FILE="$(</errors/$1.md)"
# echo $ERROR_FILE
# ERROR_FILE="${ERROR_FILE//'%'/'%25'}"
# ERROR_FILE="${ERROR_FILE//$'\n'/'%0A'}"
# ERROR_FILE="${ERROR_FILE//$'\r'/'%0D'}"

# echo "::set-output name=error::$ERROR_FILE"


pytest /tests/$1.py && {

    cat /errors/$1.md
    exit 1
}

# if [[ $? == 0 ]]; then
#     cat /errors/$1.md
#     exit 0
# fi



