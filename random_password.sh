#!/bin/bash
password_length=12
password=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c${password_length})
echo "$password" >> passwords.txt
