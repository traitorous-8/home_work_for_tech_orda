#!/bin/bash

INPUT_FILE="input,txt"

if [[ ! -f "$INPUT_FILE" ]]; then
     echo "File "$INPUT_FILE" not found!"
     exit 1
fi

while IFS= read -r line; do
    echo "$line" | rev
done < "$INPUT_FILE"
