#!/bin/bash

src_dir="source_directory"
dest_dir="destination_directory"

mkdir -p "$src_dir" "$dest_dir"
touch "$src_dir"/file.txt

cp "$src_dir"/*.txt "$dest_dir"
echo "Copied Files"

ls -l "$dest_dir"/*.txt
