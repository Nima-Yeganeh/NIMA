# pip install edge-tts

import edge_tts
import asyncio

# Function to convert text to speech and save to file
async def text_to_speech(text, output_file='output.wav', voice='en-US-GuyNeural', format="audio-16khz-32kbitrate-mono-mp3", rate="100%"):
    # Wrap the text in SSML to control the rate
    ssml_text = f"""
    <speak version='1.0' xmlns='http://www.w3.org/2001/10/synthesis' xml:lang='en-US'>
        <voice name='{voice}'>
            <prosody rate='{rate}'>
                {text}
            </prosody>
        </voice>
    </speak>
    """
    
    # Initialize the TTS engine with the SSML text
    communicate = edge_tts.Communicate(ssml_text, voice)

    # Save the speech to the specified output file
    await communicate.save(output_file)
    print(f"Audio saved as {output_file}")

# Call the async function
text = "Hello! This is a sample text converted to speech using a US male voice at a faster speed."
output_file = 'example_male.wav'  # Change this to '.mp3' if you want MP3 output
voice = 'en-US-GuyNeural'  # US Male Voice
format = "audio-16khz-16bit-mono-pcm"  # WAV format (change to "audio-16khz-32kbitrate-mono-mp3" for MP3)
rate = "150%"  # Set the speech rate; 150% for faster speech, 50% for slower

# Run the async function
asyncio.run(text_to_speech(text, output_file, voice, format, rate))

