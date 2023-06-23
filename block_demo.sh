#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: block <username@hostname>"
  exit 1
fi

remote_host="$1"
remote_script="/path/to/remote_script.sh"

scp block.sh "$remote_host:$remote_script"

ssh "$remote_host" "sudo bash $remote_script"
