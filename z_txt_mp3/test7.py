# pip install edge-tts

import edge_tts
import asyncio

# Function to convert text to speech and save to file
async def text_to_speech(text, output_file='output.wav', voice='en-US-GuyNeural', format="audio-16khz-32kbitrate-mono-mp3"):
    # Initialize the TTS engine with a specific voice
    communicate = edge_tts.Communicate(text, voice)

    # Save the speech to the specified output file (can be WAV or MP3 depending on format)
    await communicate.save(output_file)
    print(f"Audio saved as {output_file}")

# Call the async function
text = """

VPN technology has become an indispensable tool for maintaining online privacy and security in today's interconnected world. These virtual private networks enable secure communication between remote workers, protect sensitive company data transmitted over public networks, and ensure compliance with data protection regulations like GDPR. By creating encrypted tunnels through which data travels, VPNs shield personal information from prying eyes, allowing individuals to browse the internet anonymously and securely. This is particularly crucial when accessing public Wi-Fi hotspots, where unsecured connections could expose users to hacking attempts or malicious actors intercepting sensitive data. For businesses, VPNs provide a means to extend corporate network security to remote employees, ensuring that company resources remain protected even when accessed outside the traditional office environment. Additionally, VPNs allow users to bypass geographical restrictions on content, enabling access to streaming services or social media platforms that may be blocked in certain regions. However, it's important to note that while VPNs offer robust protections, they are not infallible. Some governments have implemented laws requiring VPN providers to log user data or block specific websites, highlighting the ongoing struggle between VPN users seeking privacy and authorities attempting to monitor online activities. When selecting a VPN service, it's crucial to choose reputable providers with strong encryption and strict no-logs policies to maximize protection against hackers, government surveillance, and other forms of online snooping. Despite these challenges, VPNs remain a vital component of internet security, constantly evolving to counter new threats and maintain users' right to privacy and freedom of expression in the digital age.

"""
output_file = 'example_male.wav'  # Change this to '.mp3' if you want MP3 output
voice = 'en-US-TonyNeural'  # US Male Voice
voice = 'en-US-GuyNeural'  # US Male Voice
voice = 'en-US-EricNeural'  # US Male Voice
voice = 'en-US-GuyNeural'  # US Male Voice
voice = 'en-US-TonyNeural'  # US Male Voice
voice = 'en-US-ChristopherNeural'  # US Male Voice
# voice = 'en-US-DavisNeural'  # US Male Voice
# voice = 'en-US-JasonNeural'  # US Male Voice
# voice = 'en-US-AaronNeural'  # US Male Voice
format = "audio-16khz-16bit-mono-pcm"  # WAV format (change to "audio-16khz-32kbitrate-mono-mp3" for MP3)

# Run the async function
asyncio.run(text_to_speech(text, output_file, voice, format))


