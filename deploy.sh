#!/bin/sh

find build/ -name "*.*" | sed "s/build\///" | while read FILE; do
    wget --post-file="build/$FILE" --header "Token: 22adee63-83f2-45ab-a432-412bf21b13d9" "https://test.kevahu.net/$FILE"
done