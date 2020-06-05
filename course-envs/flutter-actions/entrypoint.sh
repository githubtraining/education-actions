#!/bin/bash

export PATH="$PATH:/flutter/bin"

if [[ "$1" == "true" ]]; then
  flutter test;
fi

flutter config --enable-web;
flutter pub get;
flutter build web;
