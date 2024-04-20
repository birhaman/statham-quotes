#!/run/current-system/sw/bin/bash

path=$(dirname "$0")
file="$path/statham.md"
random=$((1 + $RANDOM % $(wc -l <"$file")))
phrase=$(awk 'NR==r' r="${random}" "$file")

printf $"\n  Стэтхем однажды раскурил сигу, а затем сказал:\n   • \"%s\"\n" "$phrase"
