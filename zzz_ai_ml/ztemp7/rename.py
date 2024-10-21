import os
import glob

# Define the location to search for PDF files
search_location = '.\\'

# Find all PDF files in the specified location
pdf_files = glob.glob(os.path.join(search_location, '*.pdf'))

# Iterate through each PDF file
for pdf_file in pdf_files:
    # Get the filename without the path and without the .pdf extension
    filename = os.path.basename(pdf_file)
    file_title = os.path.splitext(filename)[0]

    # Replace underscores and hyphens with spaces
    file_title = file_title.replace('_', ' ').replace('-', ' ')

    # Define the path of the output file to rename
    output_file_path = os.path.join(search_location, 'output_final.mp4')

    # New file name for the output mp4 file
    new_mp4_file = os.path.join(search_location, f"{file_title}.mp4")

    # Check if the output file exists before renaming
    if os.path.exists(output_file_path):
        # Rename the output file to the new file name
        os.rename(output_file_path, new_mp4_file)
        print(f"Renamed {output_file_path} to {new_mp4_file}")
    else:
        print(f"{output_file_path} does not exist.")

    # Optional: Break after processing one file (if you only want to rename once)
    break
