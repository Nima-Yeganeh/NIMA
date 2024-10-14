import re

# Specify the file path
file_path = 'zzztoconvert.txt'

# Read the file content
with open(file_path, 'r') as file:
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
    