#!/bin/bash

KEYWORD="keyword"

DIRECTORY="my_directory"
FILE="$DIRECTORY/file.txt"

mkdir -p "$DIRECTORY"
echo "Example of text, there is a keyword here: $KEYWORD" > "$FILE"

grep -r1 "$KEYWORD" "$DIRECTORY"
