#!/bin/bash

# filename="/Users/huly/workplace/bash/demo.txt"
filename="/private/etc/hosts"

last_char=$(sudo tail -c 1 "$filename")
if [[ $last_char != $'\n' ]]; then
  echo | sudo tee -a "$filename" >/dev/null
fi

echo "0.0.0.0 www.tiktok.com" | sudo tee -a "$filename" >/dev/null