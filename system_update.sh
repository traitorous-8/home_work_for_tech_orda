#!/bin/bash
echo "Update list..."
sudo apt update

echo "Check for updates..."
UPDATES=$(apt list --upgradable 2>/dev/null | grep -v 'Listing...')

if [ -z "$UPDATES" ]; then
    echo "The system is up to date. No additional updates"
else
    echo "Updates are available. Installing updates..."

    sudo apt upgrade -y
    echo "Updates installed"
fi
