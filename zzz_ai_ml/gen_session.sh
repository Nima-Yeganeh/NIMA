#!/bin/bash

sessiontopics=$(awk '{printf "%s ", $0}' ztopics.txt | sed 's/ *$//')
echo $sessiontopics
python -m pytgpt generate "generate session topic minimum 70 and maximum 80 characters using $sessiontopics" | sed 's/"//g' | sed 's/://g'
