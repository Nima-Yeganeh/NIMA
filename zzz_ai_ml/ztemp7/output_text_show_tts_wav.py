# pip install edge-tts
import edge_tts
import asyncio
import re
import os
import glob
import time

# Function to convert text to speech and save to file
async def text_to_speech(text, output_file='output.wav', voice='en-US-GuyNeural', format="riff-48khz-32it-mono-pcm"):
    # Initialize the TTS engine with a specific voice
    communicate = edge_tts.Communicate(text, voice)
    # Save the speech to the specified output file (can be WAV or MP3 depending on format)
    await communicate.save(output_file)
    print(f"Audio saved as {output_file}")

# Define the folder path
folder_path = r'.\\'

# Initialize a variable to store contents
all_texts = ""

# Loop through the numbers 1 to 50
for i in range(1, 51):
    # Construct the file name pattern
    file_pattern = os.path.join(folder_path, f'{i}_output.txt')
    imgfile_pattern = os.path.join(folder_path, f'{i}_image_newconverted_scale')    
    # Check if the file exists
    if os.path.exists(file_pattern):
        # Check if the file exists
        if os.path.exists(file_pattern):
            # Open the file and read its contents
            with open(file_pattern, 'r', encoding='utf-8') as file:
                content = file.read()
                print(f'{i}_output.txt')
                print(content)
                print("**********")
                all_texts += content + '\n'  # Append content to the variable
                output_file = f".\\{i}_example_male.wav"
                voice = 'en-US-DavisNeural'  # US Male Voice
                voice = 'en-US-JasonNeural'  # US Male Voice
                voice = 'en-US-AaronNeural'  # US Male Voice
                voice = 'en-US-TonyNeural'  # US Male Voice
                voice = 'en-US-GuyNeural'  # US Male Voice
                voice = 'en-US-EricNeural'  # US Male Voice
                voice = 'en-US-GuyNeural'  # US Male Voice
                voice = 'en-US-TonyNeural'  # US Male Voice
                voice = 'en-US-ChristopherNeural'  # US Male Voice
                format = "riff-48khz-32it-mono-pcm"
                # Run the async function
                asyncio.run(text_to_speech(content, output_file, voice, format))
                time.sleep(1)

# Print the contents of the variable
# print(all_texts)
