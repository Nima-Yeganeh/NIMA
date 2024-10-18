# pip install edge-tts
import edge_tts
import asyncio
import re

# Function to convert text to speech and save to file
async def text_to_speech(text, output_file='output.wav', voice='en-US-GuyNeural', format="audio-16khz-32kbitrate-mono-mp3"):
    # Initialize the TTS engine with a specific voice
    communicate = edge_tts.Communicate(text, voice)

    # Save the speech to the specified output file (can be WAV or MP3 depending on format)
    await communicate.save(output_file)
    print(f"Audio saved as {output_file}")

# Specify the file path
file_path = 'zzztoconvert.txt'

# Read the file content
with open(file_path, 'r', encoding='utf-8') as file:
    content = file.read()

# Find all texts that start and end with ########## using a regular expression
texts_between_markers = re.findall(r'(##########.*?##########)', content, re.DOTALL)

# Store cleaned texts in a list
cleaned_texts = []

# Remove ########## from each text and store it in the cleaned_texts list
for text in texts_between_markers:
    cleaned_text = text.replace('##########', '').strip()  # Remove markers and strip whitespace
    cleaned_texts.append(cleaned_text)

# Print each cleaned text
for index, text in enumerate(cleaned_texts, start=1):
    print()
    print(f"Text {index}")
    print(f"{text}")
    print()
    # Call the async function
    # text = ""
    # output_file = f"{index}_example_male.wav"
    output_file = f".\\{index}_example_male.wav"
    voice = 'en-US-DavisNeural'  # US Male Voice
    voice = 'en-US-JasonNeural'  # US Male Voice
    voice = 'en-US-AaronNeural'  # US Male Voice
    voice = 'en-US-TonyNeural'  # US Male Voice
    voice = 'en-US-GuyNeural'  # US Male Voice
    voice = 'en-US-EricNeural'  # US Male Voice
    voice = 'en-US-GuyNeural'  # US Male Voice
    voice = 'en-US-TonyNeural'  # US Male Voice
    voice = 'en-US-ChristopherNeural'  # US Male Voice
    format = "audio-16khz-16bit-mono-pcm"  # WAV format (change to "audio-16khz-32kbitrate-mono-mp3" for MP3)
    # Run the async function
    asyncio.run(text_to_speech(text, output_file, voice, format))
