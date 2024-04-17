
# sudo apt install python python3-pip -y
# sudo pip install gtts
from gtts import gTTS
import time
import datetime
import random
import os

def text_to_speech(text, output_file, lang):
    tts = gTTS(text, lang=lang, slow=True)
    tts.save(output_file)

def remove_mp3_files(folder):
    for filename in os.listdir(folder):
        if filename.endswith(".mp3"):
            os.remove(os.path.join(folder, filename))

def main():
    en_path = 'zen.txt'
    output_folder = "./mp3/"
    languages = ["fr", "de", "it", "es"]
    for lang in languages:
        lang_path=f"z{lang}.txt"
        lang_folder = os.path.join(output_folder, lang)
        if not os.path.exists(lang_folder):
            os.makedirs(lang_folder)
        remove_mp3_files(lang_folder)
        with open(en_path, 'r') as english, open(lang_path, 'r') as destlang:
            for line_num, (enline, destlangline) in enumerate(zip(english, destlang), start=101):
                mp3filename=(f"{output_folder}{lang}/{line_num}: {enline.strip().replace('- ', '')} ({destlangline.strip().replace('- ', '')}).mp3")
                text_to_speech(destlangline, mp3filename, lang)         

if __name__ == "__main__":
    main()
