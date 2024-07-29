#!/bin/bash

Archive_name="archive.tar"
File1="file1.txt"
File2="file2.txt"
Dir1="dir1"
File_in_dir="$Dir1/file3.txt"

mkdir -p "$Dir1"
touch "$File1" "$File2" "$File_in_dir"
echo "File content 1" > "$File1"
echo "File content 2" > "$File2"
echo "File content in dir" > "$File_in_dir"

tar -cvf "$Archive_name" "$File1" "$File2" "Dir1"
tar -xvf "$Archive_name"

ls -lr
