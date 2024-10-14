import pytgpt  # Ensure that the pytgpt module is installed or available

def generate_text(prompt):
    # Initialize or configure pytgpt, if necessary
    response = pytgpt.generate(prompt)  # The generate method takes a prompt as input
    return response

# Example usage
prompt = "What is cloud computing?"
result = generate_text(prompt)
print(result)

