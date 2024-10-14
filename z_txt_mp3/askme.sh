echo > zaskmeresult.txt
echo >> zaskmeresult.txt
echo >> zaskmeresult.txt
read -p "Enter your input: " input
python -m pytgpt generate "$input" >> zaskmeresult.txt
echo >> zaskmeresult.txt
echo >> zaskmeresult.txt
cat zaskmeresult.txt | sed 's/#/-/g' | sed 's/**//g' > zaskmeresult2.txt
cat zaskmeresult2.txt
