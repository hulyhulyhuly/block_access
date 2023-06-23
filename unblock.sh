#!/bin/bash

filename="/private/etc/hosts"

tmpfile=$(mktemp)

sudo sed '$d' "$filename" > "$tmpfile"

sudo cp "$tmpfile" "$filename"
sudo rm "$tmpfile"
