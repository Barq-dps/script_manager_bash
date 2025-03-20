#!/bin/bash

echo "Utility Script Selected"

echo "List files sorted by size (asc/desc)?"
read sort_order

if [[ "$sort_order" == "asc" ]]; then
    ls -lS | awk '{print $9, $5}'
else
    ls -lSr | awk '{print $9, $5}'
fi

echo "Enter extension to count files:"
read ext
count=$(ls *.$ext 2>/dev/null | wc -l)
size=$(du -ch *.$ext 2>/dev/null | grep total | awk '{print $1}')
echo "Files with .$ext: $count, Total size: $size"

echo "Total folder size:"
size=$(du -sh . | awk '{print $1}')
echo "$size"
