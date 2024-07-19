
#!/bin/bash
# Function to check if input is empty or consists only of whitespace
is_empty_or_blank() {
    [[ -z "$1" || "$1" =~ ^[[:space:]]*$ ]]
}
# Loop until valid input is received
while true; do
    read -p "Enter your keywords or topic: " input
    if ! is_empty_or_blank "$input"; then
        break
    else
        echo "Input cannot be empty or blank. Please try again."
    fi
done
# Save the input to the file
echo "$input" > zkeywords.txt
# read -p "Enter your keywords or topic: " input
# echo "$input" > zkeywords.txt
echo "Started..."
sleeptime=10
export LC_ALL=en_US.UTF-8
zkeywords=$(cat zkeywords.txt | head -n1)
echo "Keywords >> $zkeywords"
python -m pytgpt generate "i have a course about $zkeywords - give me 60 topics and domains without explanation for students to learn in this course" > zcrsdomains.txt
sleep $sleeptime
grep '^[0-9]\+' zcrsdomains.txt | sed 's/^[0-9]\+\.\s*//' > ztopics.txt
# Read file into an array
mapfile -t lines < ztopics.txt
echo > zzz.txt
echo >> zzz.txt
topic=$(cat zkeywords.txt | head -n 1)
echo $topic
python -m pytgpt generate "give me a course title min 50 and max 60 characters about $topic" | sed 's/"//g' >> zzz.txt
sleep $sleeptime
echo >> zzz.txt
echo >> zzz.txt
python -m pytgpt generate "give me a course subtitle min 110 to max 120 characters about $topic" | sed 's/"//g' >> zzz.txt
sleep $sleeptime
echo >> zzz.txt
echo >> zzz.txt
python -m pytgpt generate "give me a course description max 250 words what is $topic" | sed 's/"//g' >> zzz.txt
sleep $sleeptime
echo >> zzz.txt
echo >> zzz.txt
echo "Why Important?" >> zzz.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 250 words about why is it important $topic" | sed 's/"//g' >> zzz.txt
sleep $sleeptime
echo >> zzz.txt
echo >> zzz.txt
echo "Advantages of Learning?" >> zzz.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 250 words about advantages of learning $topic" | sed 's/"//g' >> zzz.txt
sleep $sleeptime
echo >> zzz.txt
echo >> zzz.txt
echo "Who Should Learn?" >> zzz.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 250 words about who should learn $topic" | sed 's/"//g' >> zzz.txt
sleep $sleeptime
echo >> zzz.txt
echo >> zzz.txt
echo "Basic Requirements?" >> zzz.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 250 words about basic requirements to learn $topic" | sed 's/"//g' >> zzz.txt
sleep $sleeptime
echo >> zzz.txt
echo >> zzz.txt
echo "Course Focus?" >> zzz.txt
python -m pytgpt generate "give me information in just one paragraph not seperate paragraphs and not bullet point with minimum 50 words that this course is theoretical knowledge base to learn and understand topics and course not include lab or configure or setup in topics $topic" | sed 's/"//g' >> zzz.txt
sleep $sleeptime
echo >> zzz.txt
echo >> zzz.txt
# Initialize variables
batch_size=5
total_lines=${#lines[@]}
# Iterate over the lines in batches of 5
for ((i=0; i<total_lines; i+=batch_size)); do
    # Initialize an array to hold the batch
    batch=() 
    # Read up to 5 lines into the batch array
    for ((j=0; j<batch_size && i+j<total_lines; j++)); do
        batch+=("${lines[i+j]}")
    done
    rm -f zcurtopics.txt
    # Echo each line in the batch
    for line in "${batch[@]}"; do
        echo "$line" >> zcurtopics.txt
    done    
    echo "*****" >> zzz.txt
    # cat zcurtopics.txt
    sessiontopics=$(awk '{printf "%s ", $0}' zcurtopics.txt | sed 's/ *$//')
    # echo $sessiontopics
    newsessiontopic=$(python -m pytgpt generate "generate a new course session topic in one line without number minimum 70 to maximum 80 characters using $sessiontopics" | sed 's/"//g' | sed 's/://g' | sed 's/,//g' | sed 's/\.//g' | sed 's/ and / /g' | sed 's/ & / /g')
    sleep $sleeptime
    echo "session >> $newsessiontopic"
    echo "$newsessiontopic" >> zzz.txt
    echo >> zzz.txt
    echo >> zzz.txt
    # Check if ztopics.txt exists
    if [ ! -f "zcurtopics.txt" ]; then
        echo "File zcurtopics.txt not found!"
        exit 1
    fi
    # Initialize an empty array
    topics=()
    # Read ztopics.txt line by line and store in array
    while IFS= read -r line
    do
        topics+=("$line")
    done < "zcurtopics.txt"
    # Echo each item in the array
    for topic in "${topics[@]}"
    do
        echo "OK $topic"
        echo "OK $topic" >> zzz.txt
        python -m pytgpt generate "give me information not seperate paragraphs and not bullet point just one paragraph with minimum 250 words about $topic" > y
        sleep $sleeptime
        cat y | awk '{printf "%s ", $0}'  | sed 's/*$//'  | sed 's/   / /g' | sed 's/  / /g' >> zzz.txt
        echo > y
        echo >> zzz.txt
        echo >> zzz.txt
        # sleep 1
    done
done
rm -f zcurtopics.txt
echo "Done!"

