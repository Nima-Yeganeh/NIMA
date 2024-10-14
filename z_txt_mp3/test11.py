# pip install edge-tts

import edge_tts
import asyncio

# Function to convert text to speech and save to file
async def text_to_speech(text, output_file='output.wav', voice='en-US-GuyNeural', format="audio-16khz-32kbitrate-mono-mp3", rate="1.5"):
    # Initialize the TTS engine with a specific voice and rate
    communicate = edge_tts.Communicate(text, voice)
    
    # Set the rate for speech (e.g., "1.5" for faster speech)
    communicate.rate = rate
    
    # Save the speech to the specified output file
    await communicate.save(output_file)
    print(f"Audio saved as {output_file}")

# Call the async function
text = "Hello! This is a sample text converted to speech using a US male voice at a faster speed."
text = "Cloud computing is a technology that allows users to access and store data, applications, and services over the internet instead of on local hardware or personal devices. It provides scalable, on-demand resources like storage, processing power, and networking through remote servers managed by providers like Amazon Web Services (AWS), Microsoft Azure, and Google Cloud. Businesses and individuals use the cloud because it reduces the need for physical infrastructure, offers flexibility to scale resources as needed, and lowers costs by paying only for what is used. It also enhances collaboration, mobility, and security by making data and services accessible from anywhere with an internet connection."
output_file = 'example_male.wav'  # Change this to '.mp3' if you want MP3 output
voice = 'en-US-GuyNeural'  # US Male Voice
voice = 'en-US-TonyNeural'  # US Male Voice
voice = 'en-US-GuyNeural'  # US Male Voice
voice = 'en-US-EricNeural'  # US Male Voice
format = "audio-16khz-16bit-mono-pcm"  # WAV format (change to "audio-16khz-32kbitrate-mono-mp3" for MP3)
rate = "2"  # Speed (1.0 is default, 1.5 is faster, 0.5 is slower)

# Run the async function
asyncio.run(text_to_speech(text, output_file, voice, format, rate))

