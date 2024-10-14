
import pytgpt  # Ensure that the pytgpt module is installed or available

def generate_text(prompt):
    # Initialize or configure pytgpt, if necessary
    response = pytgpt.generate(prompt)  # The generate method takes a prompt as input
    return response

# Ask the user for a prompt
prompt = "tell me about VPN and why use it on computers and mobiles and over internet and relation to hackers and governemnt and snoopers"
result = generate_text(prompt)
print(result)
