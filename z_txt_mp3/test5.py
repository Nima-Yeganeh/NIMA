import pyttsx3

engine = pyttsx3.init()
voices = engine.getProperty('voices')

for voice in voices:
    print(f"Voice: {voice.name}, ID: {voice.id}")

# Select a specific male voice
engine.setProperty('voice', 'english-us')  # Adjust this to the specific voice ID you want

