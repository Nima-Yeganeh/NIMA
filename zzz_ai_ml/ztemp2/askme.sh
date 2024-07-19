zkeywords=$(cat zkeywords.txt | head -n1)
echo "Keywords >> $zkeywords"
python -m pytgpt generate "i have a course about $zkeywords - give me 60 topics and domains without explanation for students to learn in this course" > zcrsdomains.txt
grep '^[0-9]\+' zcrsdomains.txt | sed 's/^[0-9]\+\.\s*//' > ztopics.txt
