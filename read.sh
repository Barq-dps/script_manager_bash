#!/bin/bash

echo "Read Script Selected"

echo "Enter file name:"
read file
if [[ ! -f "$file" ]]; then
    echo "File not found!"
    exit 1
fi

echo "Reading file..."
while IFS= read -r line; do
    echo "$line"
done < "$file"

words=$(wc -w < "$file")
lines=$(wc -l < "$file")
echo "Total words: $words"
echo "Total lines: $lines"

echo "Enter a search term:"
read term
if grep -q "$term" "$file"; then
    line_num=$(grep -n "$term" "$file" | head -n 1 | cut -d: -f1)
    word_count=$(grep -o "$term" "$file" | wc -l)
    echo "Search term found on line $line_num, appears $word_count times."
else
    echo "Search term not found."
fi
