# pip install edge-tts
import edge_tts
import asyncio
import re
import os
import glob
import time
import os
import subprocess
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

while True:
    user_input = input("Enter some text: ")
    if user_input.strip():  # Check if the input is not empty (ignoring whitespace)
        print("You entered:", user_input)
        # Directory path
        directory = r".\\"
        # Loop through numbers 1 to 50
        # Add the prefix to the content
        prompt_content = f"give me in one paragraph more than 100 words about {user_input}"
        # Generate text using pytgpt and save to the output file
        try:
            # Run the pytgpt command, sending the prompt_content as input
            result = subprocess.run(
                ["python", "-m", "pytgpt", "generate", "--provider", "auto", prompt_content],
                capture_output=True,
                text=True,
                shell=True  # Use shell=True to enable command line interpretation
            )
            # Check if the generation was successful
            if result.returncode == 0:
                generated_text = result.stdout
                print(generated_text)
                content = generated_text
                all_texts += content + '\n'  # Append content to the variable
                output_file = f"C:\\Users\\Nimay\\Downloads\\output.wav"
                voice = 'en-US-ChristopherNeural'  # US Male Voice
                format = "riff-48khz-32it-mono-pcm"
                # Run the async function
                asyncio.run(text_to_speech(content, output_file, voice, format))
                print(f"Generated content saved to file!! Done!!")
                # time.sleep(10)
            else:
                print(f"Failed to generate text...")
                print(result.stderr)
        except Exception as e:
            print(f"An error occurred: {e}")
        break  # Exit the loop if we have valid input
    else:
        print("Input cannot be empty. Please try again.")

