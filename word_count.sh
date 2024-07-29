#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: file '$1' not found"
    exit 1
fi

word_count=$(wc -w < "$1")
echo "Word count in '$1': $word_count"
