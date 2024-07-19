#!/bin/bash

echo > zcrs.txt
topic=$(cat zkeywords.txt | head -n 1)

python -m pytgpt generate "give me a course title min 50 and max 60 characters about $topic" | sed 's/"//g' >> zcrs.txt
echo >> zcrs.txt
echo >> zcrs.txt

python -m pytgpt generate "give me a course subtitle min 110 to max 120 characters about $topic" | sed 's/"//g' >> zcrs.txt
echo >> zcrs.txt
echo >> zcrs.txt

python -m pytgpt generate "give me a course description max 250 words what is $topic" | sed 's/"//g' >> zcrs.txt
echo >> zcrs.txt
echo >> zcrs.txt

echo "Why Important?" >> zcrs.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 250 words about why is it important $topic" | sed 's/"//g' >> zcrs.txt
echo >> zcrs.txt
echo >> zcrs.txt

echo "Advantages of Learning?" >> zcrs.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 250 words about advantages of learning $topic" | sed 's/"//g' >> zcrs.txt
echo >> zcrs.txt
echo >> zcrs.txt

echo "Who Should Learn?" >> zcrs.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 250 words about who should learn $topic" | sed 's/"//g' >> zcrs.txt
echo >> zcrs.txt
echo >> zcrs.txt

echo "Basic Requirements?" >> zcrs.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 250 words about basic requirements to learn $topic" | sed 's/"//g' >> zcrs.txt
echo >> zcrs.txt
echo >> zcrs.txt

echo "Course Focus?" >> zcrs.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 50 words that this course is theoretical knowledge base to learn and understand topics and course not include lab or configure or setup in topics $topic" | sed 's/"//g' >> zcrs.txt
echo >> zcrs.txt
echo >> zcrs.txt

cat zcrs.txt

