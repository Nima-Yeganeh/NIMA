
#!/bin/bash
zokok="OK"
zokok=""
sleeptime=2
export LC_ALL=en_US.UTF-8
batch_size=3
numberoftopics=39
is_empty_or_blank() {
    [[ -z "$1" || "$1" =~ ^[[:space:]]*$ ]]
}
while true; do
    read -p "Enter your main idea: " zmainidea
    if ! is_empty_or_blank "$zmainidea"; then
        break
    else
        echo "Input cannot be empty or blank. Please try again."
    fi
done
while true; do
    read -p "Enter your keywords or topic: " zkeywords
    if ! is_empty_or_blank "$zkeywords"; then
        break
    else
        echo "Input cannot be empty or blank. Please try again."
    fi
done
echo "$zkeywords" > zkeywords.txt
python -m pytgpt generate "I have a course about $zmainidea $zkeywords - give me $numberoftopics topics and domains without explanation and no lab no setup or configure for students to learn in this course" > zcrsdomains.txt
sleep $sleeptime
grep '^[0-9]\+' zcrsdomains.txt | sed 's/^[0-9]\+\.\s*//' > ztopics.txt
mapfile -t lines < ztopics.txt
echo > zzz.txt
echo >> zzz.txt
echo >> zzz.txt
echo "********************" >> zzz.txt
echo >> zzz.txt
crstitle=$(python -m pytgpt generate "give me a course title min 50 and max 60 characters about $zmainidea $zkeywords" | sed 's/"//g' | sed 's/\// /g' | sed 's/://g' | sed 's/,//g')
echo $crstitle
sleep $sleeptime
crssubtitle=$(python -m pytgpt generate "give me a course subtitle min 110 to max 120 characters about $zmainidea $zkeywords" | sed 's/"//g' | sed 's/\// /g' | sed 's/://g' | sed 's/,//g')
echo $crssubtitle
sleep $sleeptime
echo "$crstitle - $crssubtitle" >> zzz.txt
echo >> zzz.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 350 words about what is $zmainidea $zkeywords" | sed 's/"//g' | sed 's/\// /g' >> zzz.txt
echo >> zzz.txt
echo >> zzz.txt
sleep $sleeptime
# echo "Course Focus" >> zzz.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 200 words that this course is theoretical knowledge base to learn and understand topics and course not include lab or configure or setup in topics $zmainidea $zkeywords" | sed 's/"//g' | sed 's/\// /g' >> zzz.txt
echo >> zzz.txt
sleep $sleeptime
echo >> zzz.txt
echo >> zzz.txt
echo "********************" >> zzz.txt
echo >> zzz.txt
# echo "Why Important" >> zzz.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 350 words about why is it important $zmainidea $zkeywords" | sed 's/"//g' | sed 's/\// /g' >> zzz.txt
sleep $sleeptime
echo >> zzz.txt
echo >> zzz.txt
# echo "Advantages of Learning" >> zzz.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 350 words about advantages of learning $zmainidea $zkeywords" | sed 's/"//g' | sed 's/\// /g' >> zzz.txt
sleep $sleeptime
echo >> zzz.txt
echo >> zzz.txt
echo "********************" >> zzz.txt
echo >> zzz.txt
echo "Basic Requirements" >> zzz.txt
echo >> zzz.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 250 words about basic requirements to learn $zmainidea $zkeywords" | sed 's/"//g' | sed 's/\// /g' >> zzz.txt
sleep $sleeptime
echo >> zzz.txt
echo >> zzz.txt
echo "********************" >> zzz.txt
echo >> zzz.txt
echo "Who Should Learn" >> zzz.txt
echo >> zzz.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 250 words about who should learn $zmainidea $zkeywords" | sed 's/"//g' | sed 's/\// /g' >> zzz.txt
sleep $sleeptime
echo >> zzz.txt
total_lines=${#lines[@]}
for ((i=0; i<total_lines; i+=batch_size)); do
    batch=() 
    for ((j=0; j<batch_size && i+j<total_lines; j++)); do
        batch+=("${lines[i+j]}")
    done
    rm -f zcurtopics.txt
    for line in "${batch[@]}"; do
        echo "$line" >> zcurtopics.txt
    done
    if [ ! -f "zcurtopics.txt" ]; then
        echo "File zcurtopics.txt not found!"
        exit 1
    fi
    topics=()
    while IFS= read -r line
    do
        topics+=("$line")
    done < "zcurtopics.txt"
    for topic in "${topics[@]}"
    do
        echo "$topic"
        echo >> zzz.txt
        echo "********************" >> zzz.txt
        echo >> zzz.txt
        echo "$topic" | sed 's/\// /g' | sed 's/://g' | sed 's/,//g' >> zzz.txt
        python -m pytgpt generate "give me information not seperate paragraphs and not bullet point just one paragraph with minimum 650 words about $topic $zmainidea" > y
        sleep $sleeptime
        cat y | awk '{printf "%s ", $0}'  | sed 's/*$//'  | sed 's/   / /g' | sed 's/  / /g' | sed 's/\*\*//g' | sed 's/\// /g' >> zzz.txt
        echo > y
        echo >> zzz.txt
        echo >> zzz.txt
    done
done
echo >> zzz.txt
echo >> zzz.txt
rm -f zcurtopics.txt
echo "Done!"

