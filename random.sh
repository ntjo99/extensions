#!/usr/bin/env bash

minSize=1
maxSize=20

for file in test.*; do
  [ -f "$file" ] || continue
  size=$((RANDOM % (maxSize - minSize + 1) + minSize))
  head -c $((size * 2)) /dev/urandom \
    | tr -dc 'a-zA-Z0-9 \n' \
    | head -c "$size" > "$file"
done
