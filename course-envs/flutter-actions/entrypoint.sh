#!/bin/bash

ls /
pwd
./flutter/bin/flutter channel $1;
./flutter/bin/flutter upgrade;
if [[ "$2" == "web" ]]; then
  ./flutter/bin/flutter config --enable-web;
fi
if [[ "$3" == "true" ]]; then
  ./flutter/bin/flutter test;
fi
./flutter/bin/flutter build $2;
