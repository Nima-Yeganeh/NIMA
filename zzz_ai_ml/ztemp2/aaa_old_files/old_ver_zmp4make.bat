@echo off
:: Get the current date and time in the format YYYYMMDD_HHMMSS
set "datetime=%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%"
:: Remove spaces from the hour if present
set "datetime=%datetime: =0%"

:: Set the output filename with the date and time
set "output_file=C:\Users\Nimay\Downloads\zzzxyy_%datetime%.mp4"

python screenfile.py

:: Run the ffmpeg command with the dynamically generated filename
ffmpeg -loop 1 -i "C:\Users\Nimay\Downloads\z.png" -i "C:\Users\Nimay\Downloads\tts_rvc_output.wav" -r 30 -c:v libx264 -tune stillimage -af "volume=15dB" -c:a libmp3lame -b:a 128k -ac 2 -shortest "%output_file%"

echo Output file created: %output_file%

del "C:\Users\Nimay\Downloads\z.png"
del "C:\Users\Nimay\Downloads\tts_rvc_output.wav"

