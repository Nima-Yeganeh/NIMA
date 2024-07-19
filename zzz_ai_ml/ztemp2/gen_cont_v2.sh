#!/bin/bash

echo > z.txt

# Check if ztopics.txt exists
if [ ! -f "ztopics.txt" ]; then
    echo "File ztopics.txt not found!"
    exit 1
fi

# Initialize an empty array
topics=()

# Read ztopics.txt line by line and store in array
while IFS= read -r line
do
    topics+=("$line")
done < "ztopics.txt"

# Echo each item in the array
for topic in "${topics[@]}"
do
    echo "OK $topic" >> z.txt
    python -m pytgpt generate "give me information not seperate paragraphs and not bullet point just one paragraph with minimum 250 words about $topic" > y
    cat y | awk '{printf "%s ", $0}'  | sed 's/*$//'  | sed 's/   / /g' | sed 's/  / /g' >> z.txt
    echo > y
    echo >> z.txt
    echo >> z.txt
    sleep 1
done

cat z.txt

