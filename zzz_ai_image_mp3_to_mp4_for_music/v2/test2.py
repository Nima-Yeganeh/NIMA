# pip install moviepy
# pip install --upgrade moviepy
# pip install pillow==9.4.0

import os
import subprocess
from moviepy.editor import *

# Specify the directory you want to search
directory = 'C:\\Users\\Administrator\\Desktop\\code\\images'

# Loop through the files in the directory
for filename in os.listdir(directory):
    # Check if the file ends with .png
    if filename.lower().endswith('.png'):
        print(filename)

# Loop through the files in the directory
for filename in os.listdir(directory):
    # Check if the file ends with .png
    if filename.lower().endswith('.mp3'):
        print(filename)
        mp3_file = directory+'\\'+filename

# Specify the directory with PNG images and the path to the MP3 file
image_directory = directory
output_video = directory+'\\video.mp4'

print(mp3_file)
print(output_video)

# Get all PNG files in the directory and sort them
image_files = sorted([os.path.join(image_directory, file) for file in os.listdir(image_directory) if file.lower().endswith('.png')])

# Generate a text file with the list of images for ffmpeg
with open(directory+"\\images.txt", "w") as f:
    for image_file in image_files:
        f.write(f"file '{image_file}'\n")
        f.write("duration 1\n")  # Each image will display for 1 second

# Get the duration of the MP3 file using ffprobe (part of ffmpeg)
command = ["ffprobe", "-v", "error", "-show_entries", "format=duration", "-of", "default=noprint_wrappers=1:nokey=1", mp3_file]
audio_duration = 3

# Create the video from the images, loop the images to match the MP3 duration
subprocess.run([
    "ffmpeg", 
    "-y",  # Overwrite output files without asking
    "-f", "concat",  # Input format is a concatenated file list
    "-safe", "0",  # Allows the use of absolute paths in the images.txt
    "-i", "images.txt",  # Input file list
    "-vf", "scale=1920:1080:force_original_aspect_ratio=increase,crop=1920:1080,setsar=1",  # Resize and center the images
    "-t", str(audio_duration),  # Set the duration of the output video
    "-pix_fmt", "yuv420p",  # Set pixel format for compatibility
    "-c:v", "libx264",  # Use the H.264 video codec
    "temp_video.mp4"  # Temporary video file
])

# Combine the generated video with the MP3 audio file
subprocess.run([
    "ffmpeg", 
    "-y",  # Overwrite output files without asking
    "-i", "temp_video.mp4",  # Input video file
    "-i", mp3_file,  # Input audio file
    "-c:v", "copy",  # Copy the video stream without re-encoding
    "-c:a", "aac",  # Encode the audio with AAC codec
    "-strict", "experimental",  # Allow the use of experimental codecs
    "-shortest",  # Cut the video to the length of the audio
    output_video  # Output video file
])

# Clean up
os.remove("temp_video.mp4")
os.remove("images.txt")

print(f"Video has been created: {output_video}")

# images/video.mp4
# ffmpeg -i input.mp4 -vf "scale=1080:1080, pad=1920:1080:(ow-iw)/2:(oh-ih)/2" output.mp4
# ffmpeg -i input.mp4 -vf "scale=1080:1080, pad=1920:1080:(ow-iw)/2:(oh-ih)/2" -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -movflags +faststart -c:a aac -b:a 192k -ar 44100 -ac 2 -r 30 output_h264.mp4

# ffmpeg -i input.mp4 -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -movflags +faststart -c:a aac -b:a 192k -ar 44100 -ac 2 -r 30 output_h264.mp4
# ffmpeg -i input.mp4 -vf "scale=1024:1024, pad=1920:1080:(1920-1024)/2:(1080-1024)/2" -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -movflags +faststart -c:a aac -b:a 192k -ar 44100 -ac 2 -r 30 output_h264.mp4

# ffmpeg -i input.mp4 -vf "scale=iw:ih, pad=1920:1080:(1920-iw)/2:(1080-ih)/2" -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -movflags +faststart -c:a aac -b:a 192k -ar 44100 -ac 2 -r 30 output_h264.mp4

# ffmpeg -i input.mp4 -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -movflags +faststart -c:a aac -b:a 192k -ar 44100 -ac 2 -r 30 output_h264.mp4

# ffmpeg -i input.mp4 -vf "scale=1080:1080, pad=1920:1080:(ow-iw)/2:(oh-ih)/2" -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -movflags +faststart -c:a aac -b:a 192k -ar 44100 -ac 2 -r 30 output_h264.mp4

# ffmpeg -i input.mp4 -vf "scale=1080:1080, pad=1920:1080:(ow-iw)/2:(oh-ih)/2" -c:v prores_ks -profile:v 3 -pix_fmt yuv422p10le -c:a pcm_s16le -ar 44100 -ac 2 output_prores.mov
# ffmpeg -i input.mp4 -vf "scale=1080:1080, pad=1920:1080:(ow-iw)/2:(oh-ih)/2" -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -movflags +faststart -c:a aac -b:a 192k -ar 44100 -ac 2 -r 30 output_h264.mp4
# ffmpeg -i input.mp4 -vf "scale=1080:1080, pad=1920:1080:(ow-iw)/2:(oh-ih)/2" -c:v mpeg2video -b:v 50M -minrate 25M -maxrate 50M -bufsize 2M -c:a mp2 -b:a 192k -ar 44100 -ac 2 output_mpeg2.mpg

