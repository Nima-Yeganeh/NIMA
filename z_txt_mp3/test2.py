from gtts import gTTS

def text_to_mp3(text, filename='output.mp3', lang='en'):
    # Create a gTTS object with the specified text and language
    tts = gTTS(text=text, lang=lang)
    
    # Save the generated speech as an MP3 file
    tts.save(filename)
    
    print(f"MP3 saved as {filename}")

# Example usage
text = "Hello! This is a text-to-speech conversion example."
text_to_mp3(text, 'example.mp3')
