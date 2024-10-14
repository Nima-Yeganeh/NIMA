import os

def remove_files_from_list(file_list_path):
    # Open the filelist.txt and read all lines
    try:
        with open(file_list_path, 'r') as file:
            lines = file.readlines()
        
        # Loop through each line, extract the file path, and delete the file
        for line in lines:
            # Extract the file path by removing the "file '" prefix and "'" suffix
            file_path = line.strip().replace("file '", "").replace("'", "")
            
            # Check if the file exists before trying to delete it
            if os.path.exists(file_path):
                try:
                    os.remove(file_path)
                    print(f"Removed: {file_path}")
                except OSError as e:
                    print(f"Error removing {file_path}: {e}")
            else:
                print(f"File does not exist: {file_path}")
    
    except FileNotFoundError:
        print(f"The file list {file_list_path} does not exist.")

# Specify the path to the filelist.txt
file_list_path = "filelist.txt"

# Call the function to remove the files
remove_files_from_list(file_list_path)

