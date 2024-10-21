import os

# Directory path
directory = r"C:\Users\Nimay\Downloads"

# Loop through numbers 1 to 50
for i in range(1, 51):
    # Construct the file name
    file_name = f"{i}_page.txt"
    file_path = os.path.join(directory, file_name)
    
    # Check if the file exists
    if os.path.isfile(file_path):
        # Open the file and print its content
        with open(file_path, 'r', encoding='utf-8') as file:
            content = file.read()
            print(f"Content of {file_name}:")
            print(content)
            print("-" * 50)  # Separator line between file contents
    else:
        print(f"{file_name} not found.")
