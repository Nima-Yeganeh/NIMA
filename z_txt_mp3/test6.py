# pip install TTS
# pip install soundfile
from TTS.api import TTS

# Initialize the TTS model
tts = TTS(model_name="tts_models/en/ljspeech/glow-tts", progress_bar=False, gpu=False)

# Function to convert text to speech and save as a WAV file
def text_to_speech(text, output_file='output.wav', voice="male"):
    # Fetch available voices
    available_voices = tts.list_speakers()
    
    # Set speaker if available (default voice may be female)
    if voice == "male" and "male" in available_voices:
        selected_voice = "male"
    else:
        selected_voice = available_voices[0]  # Choose default voice
    
    # Generate speech
    tts.tts_to_file(text=text, speaker=selected_voice, file_path=output_file)
    print(f"Audio saved as {output_file}")

# Example usage
text = "Hello! This is a test using an open-source text to speech model."
text_to_speech(text, 'example_us_male.wav', voice="male")


