#!/bin/bash

export PATH="$PATH:/flutter/bin"

if [[ "$1" == "true" ]]; then
  flutter test;
fi

# Add versioning here, base on current timestamp
# This should fix the web caching issue!
# https://medium.com/@ralphbergmann/versioning-with-flutter-299869e68af4
flutter build web;
