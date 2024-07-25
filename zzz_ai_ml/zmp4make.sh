#!/bin/bash
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
