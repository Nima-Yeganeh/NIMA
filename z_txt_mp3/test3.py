# pip install pyttsx3

import pyttsx3

def text_to_wav(text, filename='output.wav', voice_gender='male'):
    # Initialize the pyttsx3 engine
    engine = pyttsx3.init()

    # Get available voices
    voices = engine.getProperty('voices')
    
    # Select voice based on the specified gender
    if voice_gender == 'male':
        for voice in voices:
            if 'male' in voice.name.lower():
                engine.setProperty('voice', voice.id)
                break
    else:  # female
        for voice in voices:
            if 'female' in voice.name.lower():
                engine.setProperty('voice', voice.id)
                break
    
    # Save the speech as a WAV file
    engine.save_to_file(text, filename)
    engine.runAndWait()

    print(f"WAV file saved as {filename}")

# Example usage
text = "Hello! This is a text-to-speech conversion example."
text_to_wav(text, 'example_male.wav', voice_gender='male')

