#!/bin/sh
find build/ -name "*.*" | sed "s/build\///" | while read FILE; do wget --post-file="build/$FILE" -qO dev/null --header "Token: $WEB_DEPLOY_TOKEN" "https://test.kevahu.net/$FILE"; done