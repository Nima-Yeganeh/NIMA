# pip install Pillow

import os
from PIL import Image

def find_and_convert_png_files(directory):
    # Define the target resolution
    target_resolution = (2560, 1440)

    # Iterate over numbers from 1 to 50
    for i in range(1, 51):
        # Construct the expected filename
        file_name = f"{i}_image.png"
        file_path = os.path.join(directory, file_name)
        
        # Check if the file exists
        if os.path.isfile(file_path):
            print(f'Processing file: {file_path}')
            
            # Open the image
            with Image.open(file_path) as img:
                # Resize while maintaining the aspect ratio
                img.thumbnail(target_resolution, Image.ANTIALIAS)
                
                # Construct the new filename
                new_file_name = f"{i}_image_newconverted.png"
                new_file_path = os.path.join(directory, new_file_name)
                
                # Save the new image in the same directory
                img.save(new_file_path, format='PNG', quality=100)
                print(f'Converted to: {new_file_path}')
        else:
            print(f'File not found: {file_path}')

# Specify the directory containing the PNG files
downloads_directory = r'.\\'
find_and_convert_png_files(downloads_directory)

