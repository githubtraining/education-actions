#!/bin/bash

export PATH="$PATH:`pwd`/flutter/bin";
flutter channel $1;
flutter upgrade;
if [[ "$2" == "web" ]]; then
  flutter config --enable-web;
fi
if [[ "$3" == "true" ]]; then
  flutter test;
fi
flutter build $2;
