#!/bin/bash
# Function to check if input is empty or blank
is_empty_or_blank() {
    [[ -z "$1" || "$1" =~ ^[[:space:]]*$ ]]
}
# Loop until a non-empty input is received
while true; do
    read -p "Enter your filename: " input
    if ! is_empty_or_blank "$input"; then
        break
    else
        echo "Input cannot be empty or blank. Please try again."
    fi
done
# Source directory path
src_dir="/c/Users/Nimay/zzz_nimax_files/zzzz_mine_picture_folder_notebook/Screenshots"
# Destination file path
dest_file="/c/Users/Nimay/Downloads/z.png"
# Find the latest modified file
latest_file=$(ls -t "$src_dir" | head -n 1)
# Check if a file was found
if [ -n "$latest_file" ]; then
  # Full path to the latest file
  latest_file_path="$src_dir/$latest_file"
  # Copy the latest modified file to the destination
  cp "$latest_file_path" "$dest_file"
  # Print the name of the latest modified file
  # echo "The latest modified file is: $latest_file"
  # echo "Copied to: $dest_file"
else
  echo "No files found in the directory."
fi
ffmpeg -loop 1 -i "C:\Users\Nimay\Downloads\z.png" -i "C:\Users\Nimay\Downloads\tts_rvc_output.wav" -r 30 -c:v libx264 -tune stillimage -af "volume=10dB" -c:a libmp3lame -b:a 128k -ac 2 -shortest "C:\Users\Nimay\Downloads\zzzxyz.mp4"
rm -f "C:\Users\Nimay\Downloads\tts_rvc_output.wav"
rm -f "C:\Users\Nimay\Downloads\z.png"
znewfilename=$(echo $input | sed 's/:/ /g' | sed 's/\// /g' | sed 's/,/ /g')
mv -f "C:\Users\Nimay\Downloads\zzzxyz.mp4" "C:\\Users\\Nimay\\Downloads\\$znewfilename.mp4"
