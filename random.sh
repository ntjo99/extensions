#!/usr/bin/env bash

minSize=128
maxSize=8192

for file in test.*; do
  [ -f "$file" ] || continue
  size=$((RANDOM % (maxSize - minSize + 1) + minSize))
  head -c "$size" /dev/urandom > "$file"
done
