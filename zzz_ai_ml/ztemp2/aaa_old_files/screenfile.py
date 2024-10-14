import os
import shutil

# Specify the source directory path
source_directory = r"C:\Users\Nimay\zzz_nimax_files\zzzz_mine_picture_folder_notebook\Screenshots"

# Specify the destination path
destination_path = r"C:\Users\Nimay\Downloads\z.png"

# Get the list of all files in the source directory along with their modification times
files_with_mtime = [(file, os.path.getmtime(os.path.join(source_directory, file))) for file in os.listdir(source_directory)]

# Find the file with the latest modification time
if files_with_mtime:
    latest_file = max(files_with_mtime, key=lambda x: x[1])[0]
    latest_file_path = os.path.join(source_directory, latest_file)
    print(f"The latest modified file is: {latest_file_path}")

    # Copy the latest modified file to the destination
    shutil.copy2(latest_file_path, destination_path)
    print(f"File copied to: {destination_path}")
else:
    print("No files found in the specified directory.")
