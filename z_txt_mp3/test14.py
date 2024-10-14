# pip install edge-tts

import edge_tts
import asyncio

# Function to convert text to speech and save to file
async def text_to_speech(text, output_file='output.wav', voice='en-US-GuyNeural', format="audio-16khz-32kbitrate-mono-mp3"):
    # Initialize the TTS engine with a specific voice
    communicate = edge_tts.Communicate(text, voice)

    # Save the speech to the specified output file (can be WAV or MP3 depending on format)
    await communicate.save(output_file)
    print(f"Audio saved as {output_file}")

# Call the async function
text = ""

# Read the text from the file
with open('zzztoconvert.txt', 'r', encoding='utf-8') as file:
    text = file.read()  # Reading content of 'zzztoconvert.txt' and storing in 'text'

output_file = 'example_male.wav'  # Change this to '.mp3' if you want MP3 output
voice = 'en-US-TonyNeural'  # US Male Voice
voice = 'en-US-GuyNeural'  # US Male Voice
voice = 'en-US-EricNeural'  # US Male Voice
voice = 'en-US-GuyNeural'  # US Male Voice
voice = 'en-US-TonyNeural'  # US Male Voice
voice = 'en-US-ChristopherNeural'  # US Male Voice
# voice = 'en-US-DavisNeural'  # US Male Voice
# voice = 'en-US-JasonNeural'  # US Male Voice
# voice = 'en-US-AaronNeural'  # US Male Voice
format = "audio-16khz-16bit-mono-pcm"  # WAV format (change to "audio-16khz-32kbitrate-mono-mp3" for MP3)

# Run the async function
asyncio.run(text_to_speech(text, output_file, voice, format))

