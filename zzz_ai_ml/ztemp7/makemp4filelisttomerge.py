import os

# Specify the directory containing the MP4 files
directory = r".\\"

# Specify the output file name
output_file = "filelist.txt"

# Get the list of all MP4 files in the directory
mp4_files = [f for f in os.listdir(directory) if f.lower().endswith('.mp4')]

# Write the file paths to the output text file in the required format
with open(output_file, 'w') as f:
    for mp4_file in mp4_files:
        full_path = os.path.join(directory, mp4_file)
        f.write(f"file '{full_path}'\n")

print(f"File list written to {output_file}")

