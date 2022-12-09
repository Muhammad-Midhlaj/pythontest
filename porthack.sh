#!/bin/bash

read -p "URL to check: " url6
for ((i=1;i<=100;i++)); 
do
port=$i
url="$url6:$port/info.json"
if curl --output /dev/null --silent --head --fail "$url"; then
  printf '%s\n' "$url exist"
else
  printf '%s\n' "$url does not exist"
fi
done