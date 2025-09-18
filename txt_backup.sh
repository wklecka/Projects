#!/bin/bash

for file in /Users/wklecka/Documents/Projects/*.txt; do
	echo "Backing up following file..."
	echo "$(basename "$file")\n"
	cp $file /Users/wklecka/Documents/Projects/backups/
done
