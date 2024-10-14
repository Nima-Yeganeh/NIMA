from PIL import Image
import os

# Directory containing PNG files
directory = 'path_to_your_directory'
directory = 'C:\\Users\\Administrator\\Desktop\\code\\images'

# Target dimensions
target_width = 1920
target_height = 1080

# Loop through each file in the directory
for filename in os.listdir(directory):
    if filename.lower().endswith('.png'):
        file_path = os.path.join(directory, filename)
        
        # Open the image file
        with Image.open(file_path) as img:
            original_width, original_height = img.size
            
            # Check if the image is already 1024x1024
            if original_width == 1024 and original_height == 1024:
                # Create a new image with the target size
                new_img = Image.new('RGBA', (target_width, target_height), (0, 0, 0, 255))
                
                # Calculate the position to paste the original image onto the new image
                paste_x = (target_width - original_width) // 2
                paste_y = (target_height - original_height) // 2
                
                # Paste the original image onto the new image
                new_img.paste(img, (paste_x, paste_y))
                
                # Save the resized image
                new_file_path = os.path.join(directory, 'resized_' + filename)
                new_img.save(new_file_path)
                
                print(f'Resized and saved: {new_file_path}')
            else:
                print(f'Skipped {filename}: not 1024x1024')

