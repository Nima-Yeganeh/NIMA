
# pip install moviepy
# pip install --upgrade moviepy
# pip install pillow==9.4.0

import os
from moviepy.editor import *

# Specify the directory you want to search
directory = 'C:\\Users\\Administrator\\Desktop\\code'

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

print(output_video)

# Load the MP3 file
audio_clip = AudioFileClip(mp3_file)

# Get the duration of the MP3 file
audio_duration = audio_clip.duration

# Get all PNG files in the directory
image_files = sorted([os.path.join(image_directory, file) for file in os.listdir(image_directory) if file.lower().endswith('.png')])

# Get all PNG files in the directory that start with 'resized_'
# image_files = sorted([
#     os.path.join(image_directory, file) 
#     for file in os.listdir(image_directory) 
#     if file.lower().endswith('.png') and file.lower().startswith('resized_')
# ])


# Optional: Print the filtered image files
for image_file in image_files:
    print(image_file)

# Create a list of ImageClips
image_clips = []
for image_file in image_files:
    image_clip = ImageClip(image_file).set_duration(4)  # Set the duration of each image to 1 second
    image_clips.append(image_clip)

# Concatenate images into a loop
looped_images = concatenate_videoclips(image_clips).fx(vfx.loop, duration=audio_duration)

# Set the audio to the video
video_clip = looped_images.set_audio(audio_clip)

# Export the final video
video_clip.write_videofile(output_video, codec='libx264', audio_codec='aac', fps=24)

# Clean up
audio_clip.close()

