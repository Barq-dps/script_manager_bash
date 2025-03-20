#!/bin/bash

echo "Delete Script Selected"

echo "Are you sure you want to delete files? (yes/no)"
read confirm
if [[ "$confirm" != "yes" ]]; then
    echo "Operation canceled."
    exit 0
fi

echo "Delete all files or by extension? (all/ext)"
read delete_option

if [[ "$delete_option" == "all" ]]; then
    rm -rf *
    echo "All files deleted."
else
    echo "Enter extension:"
    read ext
    rm -f *.$ext
    echo "Deleted all .$ext files."
fi
