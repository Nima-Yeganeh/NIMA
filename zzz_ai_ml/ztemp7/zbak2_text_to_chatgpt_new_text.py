import os
import subprocess
import time

# Directory path
directory = r".\\"

# Loop through numbers 1 to 50
for i in range(1, 51):
    # Construct the file names
    input_file_name = f"{i}_page.txt"
    input_file_path = os.path.join(directory, input_file_name)
    output_file_name = f"{i}_output.txt"
    output_file_path = os.path.join(directory, output_file_name)

    # Check if the input file exists
    if os.path.isfile(input_file_path):
        # Open the input file and read its content
        with open(input_file_path, 'r', encoding='utf-8') as file:
            file_content = file.read()
            print(f"Content of {input_file_name}:")
            print(file_content)
            print("-" * 50)  # Separator line between file contents

        # Add the prefix to the content
        prompt_content = f"give me in one paragraph more than 100 words about {file_content}"

        # Generate text using pytgpt and save to the output file
        try:
            # Run the pytgpt command, sending the prompt_content as input
            result = subprocess.run(
                ["python", "-m", "pytgpt", "generate", prompt_content],
                capture_output=True,
                text=True,
                shell=True  # Use shell=True to enable command line interpretation
            )

            # Check if the generation was successful
            if result.returncode == 0:
                generated_text = result.stdout

                # Save the generated text to the output file
                with open(output_file_path, 'w', encoding='utf-8') as output_file:
                    output_file.write(generated_text)
                print(f"Generated content saved to {output_file_name}")
                time.sleep(10)
            else:
                print(f"Failed to generate text for {input_file_name}")
                print(result.stderr)

        except Exception as e:
            print(f"An error occurred: {e}")
    else:
        print(f"{input_file_name} not found.")

