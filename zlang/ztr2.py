
# sudo apt install python python3-pip -y
# sudo pip install gtts
from gtts import gTTS
import time
import datetime
import random
import os

def extract_text_between_markers(line):
    start_marker = ">>>"
    end_marker = ">>>"
    start_index = line.find(start_marker)
    end_index = line.rfind(end_marker)
    if start_index != -1 and end_index != -1:
        return line[start_index + len(start_marker):end_index].strip()
    else:
        return None

def convert(en_path, lang_path):
    with open(en_path, 'r') as en_file:
        with open(lang_path, 'w') as lang_file:
            for line in en_file:
                extracted_text = extract_text_between_markers(line).replace('/', '')
                if extracted_text:
                    lang_file.write(extracted_text + '\n')

def text_to_speech(text, output_file, lang):
    tts = gTTS(text, lang=lang, slow=True)
    tts.save(output_file)

def remove_mp3_files(folder):
    for filename in os.listdir(folder):
        if filename.endswith(".xyz"):
            os.remove(os.path.join(folder, filename))

def main():
    en_path = 'zen.txt'
    output_folder = "./xyz/"
    # languages = ["fr", "de", "it", "es", "sv", "no", "fi", "hu", "da"]
    languages = ["es"]
    for lang in languages:
        lang_path=f"z{lang}.txt"
        convert(en_path, lang_path)
        lang_folder = os.path.join(output_folder, lang)
        if not os.path.exists(lang_folder):
            os.makedirs(lang_folder)
        remove_mp3_files(lang_folder)
        with open(en_path, 'r') as english, open(lang_path, 'r') as destlang:
            for line_num, (enline, destlangline) in enumerate(zip(english, destlang), start=101):
                mp3filename=(f"{output_folder}{lang}/{line_num}: {enline.strip().replace('- ', '').replace('/', '')} ({destlangline.strip().replace('- ', '')}).xyz")
                text_to_speech(destlangline, mp3filename, lang)         

if __name__ == "__main__":
    main()
